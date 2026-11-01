---
title: CameraAttributesPractical — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cameraattributespractical.html
crawled_at: "2026-08-13T10:18:42+12:00"
content_hash: 6fd9afff5992a293d11fcb025f1399562354a0fbec5c77ec54d5efc49447e398
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CameraAttributesPractical

* * *

# CameraAttributesPractical

**Inherits:** [CameraAttributes](class_cameraattributes.md#class-cameraattributes) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Camera settings in an easy to use format.

## Description

Controls camera-specific attributes such as auto-exposure, depth of field, and exposure override.

When used in a [WorldEnvironment](class_worldenvironment.md#class-worldenvironment) it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own [CameraAttributes](class_cameraattributes.md#class-cameraattributes), including the editor camera. When used in a [Camera3D](class_camera3d.md#class-camera3d) it will override any [CameraAttributes](class_cameraattributes.md#class-cameraattributes) set in the [WorldEnvironment](class_worldenvironment.md#class-worldenvironment). When used in [VoxelGI](class_voxelgi.md#class-voxelgi) or [LightmapGI](class_lightmapgi.md#class-lightmapgi), only the exposure settings will be used.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [auto\_exposure\_max\_sensitivity](#class-cameraattributespractical-property-auto-exposure-max-sensitivity) | `800.0` |
| [float](class_float.md#class-float) | [auto\_exposure\_min\_sensitivity](#class-cameraattributespractical-property-auto-exposure-min-sensitivity) | `0.0` |
| [float](class_float.md#class-float) | [dof\_blur\_amount](#class-cameraattributespractical-property-dof-blur-amount) | `0.1` |
| [float](class_float.md#class-float) | [dof\_blur\_far\_distance](#class-cameraattributespractical-property-dof-blur-far-distance) | `10.0` |
| [bool](class_bool.md#class-bool) | [dof\_blur\_far\_enabled](#class-cameraattributespractical-property-dof-blur-far-enabled) | `false` |
| [float](class_float.md#class-float) | [dof\_blur\_far\_transition](#class-cameraattributespractical-property-dof-blur-far-transition) | `5.0` |
| [float](class_float.md#class-float) | [dof\_blur\_near\_distance](#class-cameraattributespractical-property-dof-blur-near-distance) | `2.0` |
| [bool](class_bool.md#class-bool) | [dof\_blur\_near\_enabled](#class-cameraattributespractical-property-dof-blur-near-enabled) | `false` |
| [float](class_float.md#class-float) | [dof\_blur\_near\_transition](#class-cameraattributespractical-property-dof-blur-near-transition) | `1.0` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **auto\_exposure\_max\_sensitivity** = `800.0` [🔗](#class-cameraattributespractical-property-auto-exposure-max-sensitivity)

- void **set\_auto\_exposure\_max\_sensitivity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_auto\_exposure\_max\_sensitivity**()


The maximum sensitivity (in ISO) used when calculating auto exposure. When calculating scene average luminance, color values will be clamped to at least this value. This limits the auto-exposure from exposing below a certain brightness, resulting in a cut off point where the scene will remain bright.

* * *

[float](class_float.md#class-float) **auto\_exposure\_min\_sensitivity** = `0.0` [🔗](#class-cameraattributespractical-property-auto-exposure-min-sensitivity)

- void **set\_auto\_exposure\_min\_sensitivity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_auto\_exposure\_min\_sensitivity**()


The minimum sensitivity (in ISO) used when calculating auto exposure. When calculating scene average luminance, color values will be clamped to at least this value. This limits the auto-exposure from exposing above a certain brightness, resulting in a cut off point where the scene will remain dark.

* * *

[float](class_float.md#class-float) **dof\_blur\_amount** = `0.1` [🔗](#class-cameraattributespractical-property-dof-blur-amount)

- void **set\_dof\_blur\_amount**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dof\_blur\_amount**()


Sets the maximum amount of blur. When using physically-based blur amounts, will instead act as a multiplier. High values lead to an increased amount of blurriness, but can be much more expensive to calculate. It is best to keep this as low as possible for a given art style.

* * *

[float](class_float.md#class-float) **dof\_blur\_far\_distance** = `10.0` [🔗](#class-cameraattributespractical-property-dof-blur-far-distance)

- void **set\_dof\_blur\_far\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dof\_blur\_far\_distance**()


Objects further from the [Camera3D](class_camera3d.md#class-camera3d) by this amount will be blurred by the depth of field effect. Measured in meters.

* * *

[bool](class_bool.md#class-bool) **dof\_blur\_far\_enabled** = `false` [🔗](#class-cameraattributespractical-property-dof-blur-far-enabled)

- void **set\_dof\_blur\_far\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_dof\_blur\_far\_enabled**()


Enables depth of field blur for objects further than [dof\_blur\_far\_distance](#class-cameraattributespractical-property-dof-blur-far-distance). Strength of blur is controlled by [dof\_blur\_amount](#class-cameraattributespractical-property-dof-blur-amount) and modulated by [dof\_blur\_far\_transition](#class-cameraattributespractical-property-dof-blur-far-transition).

**Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

**Note:** Depth of field blur is not supported on viewports that have a transparent background (where [Viewport.transparent\_bg](class_viewport.md#class-viewport-property-transparent-bg) is `true`).

* * *

[float](class_float.md#class-float) **dof\_blur\_far\_transition** = `5.0` [🔗](#class-cameraattributespractical-property-dof-blur-far-transition)

- void **set\_dof\_blur\_far\_transition**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dof\_blur\_far\_transition**()


When positive, distance over which (starting from [dof\_blur\_far\_distance](#class-cameraattributespractical-property-dof-blur-far-distance)) blur effect will scale from 0 to [dof\_blur\_amount](#class-cameraattributespractical-property-dof-blur-amount). When negative, uses physically-based scaling so depth of field effect will scale from 0 at [dof\_blur\_far\_distance](#class-cameraattributespractical-property-dof-blur-far-distance) and will increase in a physically accurate way as objects get further from the [Camera3D](class_camera3d.md#class-camera3d).

* * *

[float](class_float.md#class-float) **dof\_blur\_near\_distance** = `2.0` [🔗](#class-cameraattributespractical-property-dof-blur-near-distance)

- void **set\_dof\_blur\_near\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dof\_blur\_near\_distance**()


Objects closer from the [Camera3D](class_camera3d.md#class-camera3d) by this amount will be blurred by the depth of field effect. Measured in meters.

* * *

[bool](class_bool.md#class-bool) **dof\_blur\_near\_enabled** = `false` [🔗](#class-cameraattributespractical-property-dof-blur-near-enabled)

- void **set\_dof\_blur\_near\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_dof\_blur\_near\_enabled**()


Enables depth of field blur for objects closer than [dof\_blur\_near\_distance](#class-cameraattributespractical-property-dof-blur-near-distance). Strength of blur is controlled by [dof\_blur\_amount](#class-cameraattributespractical-property-dof-blur-amount) and modulated by [dof\_blur\_near\_transition](#class-cameraattributespractical-property-dof-blur-near-transition).

**Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

**Note:** Depth of field blur is not supported on viewports that have a transparent background (where [Viewport.transparent\_bg](class_viewport.md#class-viewport-property-transparent-bg) is `true`).

* * *

[float](class_float.md#class-float) **dof\_blur\_near\_transition** = `1.0` [🔗](#class-cameraattributespractical-property-dof-blur-near-transition)

- void **set\_dof\_blur\_near\_transition**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_dof\_blur\_near\_transition**()


When positive, distance over which blur effect will scale from 0 to [dof\_blur\_amount](#class-cameraattributespractical-property-dof-blur-amount), ending at [dof\_blur\_near\_distance](#class-cameraattributespractical-property-dof-blur-near-distance). When negative, uses physically-based scaling so depth of field effect will scale from 0 at [dof\_blur\_near\_distance](#class-cameraattributespractical-property-dof-blur-near-distance) and will increase in a physically accurate way as objects get closer to the [Camera3D](class_camera3d.md#class-camera3d).

[Previous](class_cameraattributesphysical.md "CameraAttributesPhysical") [Next](class_cameratexture.md "CameraTexture")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cameraattributesphysical.md "CameraAttributesPhysical") [Next](class_cameratexture.md "CameraTexture")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).