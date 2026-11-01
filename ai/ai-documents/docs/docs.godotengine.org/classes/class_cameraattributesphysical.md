---
title: CameraAttributesPhysical — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cameraattributesphysical.html
crawled_at: "2026-08-13T10:20:13+12:00"
content_hash: 3a02873401b49ee3063834f78661dfd2429348d84434850410682f0354b9a4c7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CameraAttributesPhysical

* * *

# CameraAttributesPhysical

**Inherits:** [CameraAttributes](class_cameraattributes.md#class-cameraattributes) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Physically-based camera settings.

## Description

**CameraAttributesPhysical** is used to set rendering settings based on a physically-based camera's settings. It is responsible for exposure, auto-exposure, and depth of field.

When used in a [WorldEnvironment](class_worldenvironment.md#class-worldenvironment) it provides default settings for exposure, auto-exposure, and depth of field that will be used by all cameras without their own [CameraAttributes](class_cameraattributes.md#class-cameraattributes), including the editor camera. When used in a [Camera3D](class_camera3d.md#class-camera3d) it will override any [CameraAttributes](class_cameraattributes.md#class-cameraattributes) set in the [WorldEnvironment](class_worldenvironment.md#class-worldenvironment) and will override the [Camera3D](class_camera3d.md#class-camera3d) s [Camera3D.far](class_camera3d.md#class-camera3d-property-far), [Camera3D.near](class_camera3d.md#class-camera3d-property-near), [Camera3D.fov](class_camera3d.md#class-camera3d-property-fov), and [Camera3D.keep\_aspect](class_camera3d.md#class-camera3d-property-keep-aspect) properties. When used in [VoxelGI](class_voxelgi.md#class-voxelgi) or [LightmapGI](class_lightmapgi.md#class-lightmapgi), only the exposure settings will be used.

The default settings are intended for use in an outdoor environment, tips for settings for use in an indoor environment can be found in each setting's documentation.

**Note:** Depth of field blur is only supported in the Forward+ and Mobile rendering methods, not Compatibility.

## Tutorials

- [Physical light and camera units](../tutorials/3d/physical_light_and_camera_units.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [auto\_exposure\_max\_exposure\_value](#class-cameraattributesphysical-property-auto-exposure-max-exposure-value) | `10.0` |
| [float](class_float.md#class-float) | [auto\_exposure\_min\_exposure\_value](#class-cameraattributesphysical-property-auto-exposure-min-exposure-value) | `-8.0` |
| [float](class_float.md#class-float) | [exposure\_aperture](#class-cameraattributesphysical-property-exposure-aperture) | `16.0` |
| [float](class_float.md#class-float) | [exposure\_shutter\_speed](#class-cameraattributesphysical-property-exposure-shutter-speed) | `100.0` |
| [float](class_float.md#class-float) | [frustum\_far](#class-cameraattributesphysical-property-frustum-far) | `4000.0` |
| [float](class_float.md#class-float) | [frustum\_focal\_length](#class-cameraattributesphysical-property-frustum-focal-length) | `35.0` |
| [float](class_float.md#class-float) | [frustum\_focus\_distance](#class-cameraattributesphysical-property-frustum-focus-distance) | `10.0` |
| [float](class_float.md#class-float) | [frustum\_near](#class-cameraattributesphysical-property-frustum-near) | `0.05` |

## Methods

|     |     |
| --- | --- |
| [float](class_float.md#class-float) | [get\_fov](#class-cameraattributesphysical-method-get-fov)() const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **auto\_exposure\_max\_exposure\_value** = `10.0` [🔗](#class-cameraattributesphysical-property-auto-exposure-max-exposure-value)

- void **set\_auto\_exposure\_max\_exposure\_value**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_auto\_exposure\_max\_exposure\_value**()


The maximum luminance (in EV100) used when calculating auto exposure. When calculating scene average luminance, color values will be clamped to at least this value. This limits the auto-exposure from exposing below a certain brightness, resulting in a cut off point where the scene will remain bright.

* * *

[float](class_float.md#class-float) **auto\_exposure\_min\_exposure\_value** = `-8.0` [🔗](#class-cameraattributesphysical-property-auto-exposure-min-exposure-value)

- void **set\_auto\_exposure\_min\_exposure\_value**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_auto\_exposure\_min\_exposure\_value**()


The minimum luminance (in EV100) used when calculating auto exposure. When calculating scene average luminance, color values will be clamped to at least this value. This limits the auto-exposure from exposing above a certain brightness, resulting in a cut off point where the scene will remain dark.

* * *

[float](class_float.md#class-float) **exposure\_aperture** = `16.0` [🔗](#class-cameraattributesphysical-property-exposure-aperture)

- void **set\_aperture**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_aperture**()


Size of the aperture of the camera, measured in f-stops. An f-stop is a unitless ratio between the focal length of the camera and the diameter of the aperture. A high aperture setting will result in a smaller aperture which leads to a dimmer image and sharper focus. A low aperture results in a wide aperture which lets in more light resulting in a brighter, less-focused image. Default is appropriate for outdoors at daytime (i.e. for use with a default [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d)), for indoor lighting, a value between 2 and 4 is more appropriate.

Only available when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is enabled.

* * *

[float](class_float.md#class-float) **exposure\_shutter\_speed** = `100.0` [🔗](#class-cameraattributesphysical-property-exposure-shutter-speed)

- void **set\_shutter\_speed**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_shutter\_speed**()


Time for shutter to open and close, evaluated as `1 / shutter_speed` seconds. A higher value will allow less light (leading to a darker image), while a lower value will allow more light (leading to a brighter image).

Only available when [ProjectSettings.rendering/lights\_and\_shadows/use\_physical\_light\_units](class_projectsettings.md#class-projectsettings-property-rendering-lights-and-shadows-use-physical-light-units) is enabled.

* * *

[float](class_float.md#class-float) **frustum\_far** = `4000.0` [🔗](#class-cameraattributesphysical-property-frustum-far)

- void **set\_far**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_far**()


Override value for [Camera3D.far](class_camera3d.md#class-camera3d-property-far). Used internally when calculating depth of field. When attached to a [Camera3D](class_camera3d.md#class-camera3d) as its [Camera3D.attributes](class_camera3d.md#class-camera3d-property-attributes), it will override the [Camera3D.far](class_camera3d.md#class-camera3d-property-far) property.

* * *

[float](class_float.md#class-float) **frustum\_focal\_length** = `35.0` [🔗](#class-cameraattributesphysical-property-frustum-focal-length)

- void **set\_focal\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_focal\_length**()


Distance between camera lens and camera aperture, measured in millimeters. Controls field of view and depth of field. A larger focal length will result in a smaller field of view and a narrower depth of field meaning fewer objects will be in focus. A smaller focal length will result in a wider field of view and a larger depth of field meaning more objects will be in focus. When attached to a [Camera3D](class_camera3d.md#class-camera3d) as its [Camera3D.attributes](class_camera3d.md#class-camera3d-property-attributes), it will override the [Camera3D.fov](class_camera3d.md#class-camera3d-property-fov) property and the [Camera3D.keep\_aspect](class_camera3d.md#class-camera3d-property-keep-aspect) property.

* * *

[float](class_float.md#class-float) **frustum\_focus\_distance** = `10.0` [🔗](#class-cameraattributesphysical-property-frustum-focus-distance)

- void **set\_focus\_distance**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_focus\_distance**()


Distance from camera of object that will be in focus, measured in meters. Internally this will be clamped to be at least 1 millimeter larger than [frustum\_focal\_length](#class-cameraattributesphysical-property-frustum-focal-length).

* * *

[float](class_float.md#class-float) **frustum\_near** = `0.05` [🔗](#class-cameraattributesphysical-property-frustum-near)

- void **set\_near**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_near**()


Override value for [Camera3D.near](class_camera3d.md#class-camera3d-property-near). Used internally when calculating depth of field. When attached to a [Camera3D](class_camera3d.md#class-camera3d) as its [Camera3D.attributes](class_camera3d.md#class-camera3d-property-attributes), it will override the [Camera3D.near](class_camera3d.md#class-camera3d-property-near) property.

* * *

## Method Descriptions

[float](class_float.md#class-float) **get\_fov**() const [🔗](#class-cameraattributesphysical-method-get-fov)

Returns the vertical field of view that corresponds to the [frustum\_focal\_length](#class-cameraattributesphysical-property-frustum-focal-length). This value is calculated internally whenever [frustum\_focal\_length](#class-cameraattributesphysical-property-frustum-focal-length) is changed.

[Previous](class_cameraattributes.md "CameraAttributes") [Next](class_cameraattributespractical.md "CameraAttributesPractical")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cameraattributes.md "CameraAttributes") [Next](class_cameraattributespractical.md "CameraAttributesPractical")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).