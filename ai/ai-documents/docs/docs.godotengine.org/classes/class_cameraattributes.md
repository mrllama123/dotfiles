---
title: CameraAttributes — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cameraattributes.html
crawled_at: "2026-08-13T10:22:13+12:00"
content_hash: 5660266b314e2d5e53b41df7c4c40864941b6f6ec3fe08818dcaf3095300dbb0
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CameraAttributes

* * *

# CameraAttributes

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [CameraAttributesPhysical](class_cameraattributesphysical.md#class-cameraattributesphysical), [CameraAttributesPractical](class_cameraattributespractical.md#class-cameraattributespractical)

Parent class for camera settings.

## Description

Controls camera-specific attributes such as depth of field and exposure override.

When used in a [WorldEnvironment](class_worldenvironment.md#class-worldenvironment) it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own **CameraAttributes**, including the editor camera. When used in a [Camera3D](class_camera3d.md#class-camera3d) it will override any **CameraAttributes** set in the [WorldEnvironment](class_worldenvironment.md#class-worldenvironment). When used in [VoxelGI](class_voxelgi.md#class-voxelgi) or [LightmapGI](class_lightmapgi.md#class-lightmapgi), only the exposure settings will be used.

See also [Environment](class_environment.md#class-environment) for general 3D environment settings.

This is a pure virtual class that is inherited by [CameraAttributesPhysical](class_cameraattributesphysical.md#class-cameraattributesphysical) and [CameraAttributesPractical](class_cameraattributespractical.md#class-cameraattributespractical).

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [auto\_exposure\_enabled](#class-cameraattributes-property-auto-exposure-enabled) | `false` |
| [float](class_float.md#class-float) | [auto\_exposure\_scale](#class-cameraattributes-property-auto-exposure-scale) | `0.4` |
| [float](class_float.md#class-float) | [auto\_exposure\_speed](#class-cameraattributes-property-auto-exposure-speed) | `0.5` |
| [float](class_float.md#class-float) | [exposure\_multiplier](#class-cameraattributes-property-exposure-multiplier) | `1.0` |
| [float](class_float.md#class-float) | [exposure\_sensitivity](#class-cameraattributes-property-exposure-sensitivity) | `100.0` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **auto\_exposure\_enabled** = `false` [🔗](#class-cameraattributes-property-auto-exposure-enabled)

- void **set\_auto\_exposure\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_auto\_exposure\_enabled**()


If `true`, enables the tonemapping auto exposure mode of the scene renderer. If `true`, the renderer will automatically determine the exposure setting to adapt to the scene's illumination and the observed light.

* * *

[float](class_float.md#class-float) **auto\_exposure\_scale** = `0.4` [🔗](#class-cameraattributes-property-auto-exposure-scale)

- void **set\_auto\_exposure\_scale**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_auto\_exposure\_scale**()


The scale of the auto exposure effect. Affects the intensity of auto exposure.

* * *

[float](class_float.md#class-float) **auto\_exposure\_speed** = `0.5` [🔗](#class-cameraattributes-property-auto-exposure-speed)

- void **set\_auto\_exposure\_speed**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_auto\_exposure\_speed**()


The speed of the auto exposure effect. Affects the time needed for the camera to perform auto exposure.

* * *

[float](class_float.md#class-float) **exposure\_multiplier** = `1.0` [🔗](#class-cameraattributes-property-exposure-multiplier)

- void **set\_exposure\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_exposure\_multiplier**()


Multiplier for the exposure amount. A higher value results in a brighter image.

* * *

[float](class_float.md#class-float) **exposure\_sensitivity** = `100.0` [🔗](#class-cameraattributes-property-exposure-sensitivity)

- void **set\_exposure\_sensitivity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_exposure\_sensitivity**()


Sensitivity of camera sensors, measured in ISO. A higher sensitivity results in a brighter image.

If [auto\_exposure\_enabled](#class-cameraattributes-property-auto-exposure-enabled) is `true`, this can be used as a method of exposure compensation, doubling the value will increase the exposure value (measured in EV100) by 1 stop.

**Note:** Only available when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is enabled.

[Previous](class_buttongroup.md "ButtonGroup") [Next](class_cameraattributesphysical.md "CameraAttributesPhysical")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_buttongroup.md "ButtonGroup") [Next](class_cameraattributesphysical.md "CameraAttributesPhysical")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).