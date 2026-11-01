---
title: GLTFLight — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltflight.html
crawled_at: "2026-08-13T10:38:15+12:00"
content_hash: c3d265ba8becf8d2b3a460c6bd4266919abdeb24e0fd537886e0929c7a70bbc5
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFLight

* * *

# GLTFLight

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a glTF light.

## Description

Represents a light as defined by the `KHR_lights_punctual` glTF extension.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [KHR\_lights\_punctual glTF extension spec](https://github.com/KhronosGroup/glTF/blob/main/extensions/2.0/Khronos/KHR_lights_punctual)


## Properties

|     |     |     |
| --- | --- | --- |
| [Color](class_color.md#class-color) | [color](#class-gltflight-property-color) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [inner\_cone\_angle](#class-gltflight-property-inner-cone-angle) | `0.0` |
| [float](class_float.md#class-float) | [intensity](#class-gltflight-property-intensity) | `1.0` |
| [String](class_string.md#class-string) | [light\_type](#class-gltflight-property-light-type) | `""` |
| [float](class_float.md#class-float) | [outer\_cone\_angle](#class-gltflight-property-outer-cone-angle) | `0.7853982` |
| [float](class_float.md#class-float) | [range](#class-gltflight-property-range) | `inf` |

## Methods

|     |     |
| --- | --- |
| [GLTFLight](#class-gltflight) | [from\_dictionary](#class-gltflight-method-from-dictionary)(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static |
| [GLTFLight](#class-gltflight) | [from\_node](#class-gltflight-method-from-node)(light\_node: [Light3D](class_light3d.md#class-light3d)) static |
| [Variant](class_variant.md#class-variant) | [get\_additional\_data](#class-gltflight-method-get-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname)) |
| void | [set\_additional\_data](#class-gltflight-method-set-additional-data)(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) |
| [Dictionary](class_dictionary.md#class-dictionary) | [to\_dictionary](#class-gltflight-method-to-dictionary)() const |
| [Light3D](class_light3d.md#class-light3d) | [to\_node](#class-gltflight-method-to-node)() const |

* * *

## Property Descriptions

[Color](class_color.md#class-color) **color** = `Color(1, 1, 1, 1)` [🔗](#class-gltflight-property-color)

- void **set\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_color**()


The [Color](class_color.md#class-color) of the light in linear space. Defaults to white. A black color causes the light to have no effect.

This value is linear to match glTF, but will be converted to nonlinear sRGB when creating a Godot [Light3D](class_light3d.md#class-light3d) node upon import, or converted to linear when exporting a Godot [Light3D](class_light3d.md#class-light3d) to glTF.

* * *

[float](class_float.md#class-float) **inner\_cone\_angle** = `0.0` [🔗](#class-gltflight-property-inner-cone-angle)

- void **set\_inner\_cone\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_inner\_cone\_angle**()


The inner angle of the cone in a spotlight. Must be less than or equal to the outer cone angle.

Within this angle, the light is at full brightness. Between the inner and outer cone angles, there is a transition from full brightness to zero brightness. When creating a Godot [SpotLight3D](class_spotlight3d.md#class-spotlight3d), the ratio between the inner and outer cone angles is used to calculate the attenuation of the light.

* * *

[float](class_float.md#class-float) **intensity** = `1.0` [🔗](#class-gltflight-property-intensity)

- void **set\_intensity**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_intensity**()


The intensity of the light. This is expressed in candelas (lumens per steradian) for point and spot lights, and lux (lumens per m²) for directional lights. When creating a Godot light, this value is converted to a unitless multiplier.

* * *

[String](class_string.md#class-string) **light\_type** = `""` [🔗](#class-gltflight-property-light-type)

- void **set\_light\_type**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_light\_type**()


The type of the light. The values accepted by Godot are "point", "spot", and "directional", which correspond to Godot's [OmniLight3D](class_omnilight3d.md#class-omnilight3d), [SpotLight3D](class_spotlight3d.md#class-spotlight3d), and [DirectionalLight3D](class_directionallight3d.md#class-directionallight3d) respectively.

* * *

[float](class_float.md#class-float) **outer\_cone\_angle** = `0.7853982` [🔗](#class-gltflight-property-outer-cone-angle)

- void **set\_outer\_cone\_angle**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_outer\_cone\_angle**()


The outer angle of the cone in a spotlight. Must be greater than or equal to the inner angle.

At this angle, the light drops off to zero brightness. Between the inner and outer cone angles, there is a transition from full brightness to zero brightness. If this angle is a half turn, then the spotlight emits in all directions. When creating a Godot [SpotLight3D](class_spotlight3d.md#class-spotlight3d), the outer cone angle is used as the angle of the spotlight.

* * *

[float](class_float.md#class-float) **range** = `inf` [🔗](#class-gltflight-property-range)

- void **set\_range**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_range**()


The range of the light, beyond which the light has no effect. glTF lights with no range defined behave like physical lights (which have infinite range). When creating a Godot light, the range is clamped to `4096.0`.

* * *

## Method Descriptions

[GLTFLight](#class-gltflight) **from\_dictionary**(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static [🔗](#class-gltflight-method-from-dictionary)

Creates a new GLTFLight instance by parsing the given [Dictionary](class_dictionary.md#class-dictionary).

* * *

[GLTFLight](#class-gltflight) **from\_node**(light\_node: [Light3D](class_light3d.md#class-light3d)) static [🔗](#class-gltflight-method-from-node)

Create a new GLTFLight instance from the given Godot [Light3D](class_light3d.md#class-light3d) node.

* * *

[Variant](class_variant.md#class-variant) **get\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname)) [🔗](#class-gltflight-method-get-additional-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

void **set\_additional\_data**(extension\_name: [StringName](class_stringname.md#class-stringname), additional\_data: [Variant](class_variant.md#class-variant)) [🔗](#class-gltflight-method-set-additional-data)

There is currently no description for this method. Please help us by [contributing one](https://contributing.godotengine.org/en/latest/documentation/class_reference.html)!

* * *

[Dictionary](class_dictionary.md#class-dictionary) **to\_dictionary**() const [🔗](#class-gltflight-method-to-dictionary)

Serializes this GLTFLight instance into a [Dictionary](class_dictionary.md#class-dictionary).

* * *

[Light3D](class_light3d.md#class-light3d) **to\_node**() const [🔗](#class-gltflight-method-to-node)

Converts this GLTFLight instance into a Godot [Light3D](class_light3d.md#class-light3d) node.

[Previous](class_gltfdocumentextensionconvertimportermesh.md "GLTFDocumentExtensionConvertImporterMesh") [Next](class_gltfmesh.md "GLTFMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfdocumentextensionconvertimportermesh.md "GLTFDocumentExtensionConvertImporterMesh") [Next](class_gltfmesh.md "GLTFMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).