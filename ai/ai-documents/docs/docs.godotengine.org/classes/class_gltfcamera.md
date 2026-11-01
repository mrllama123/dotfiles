---
title: GLTFCamera — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltfcamera.html
crawled_at: "2026-08-13T10:35:55+12:00"
content_hash: c38e691ffefe1d2ec0cefc50aa389b5993cee0e91a79cf6d8b400b8d1dc88573
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFCamera

* * *

# GLTFCamera

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a glTF camera.

## Description

Represents a camera as defined by the base glTF spec.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)

- [glTF camera detailed specification](https://registry.khronos.org/glTF/specs/2.0/glTF-2.0.html#reference-camera)

- [glTF camera spec and example file](https://github.com/KhronosGroup/glTF-Tutorials/blob/master/gltfTutorial/gltfTutorial_015_SimpleCameras.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [depth\_far](#class-gltfcamera-property-depth-far) | `4000.0` |
| [float](class_float.md#class-float) | [depth\_near](#class-gltfcamera-property-depth-near) | `0.05` |
| [float](class_float.md#class-float) | [fov](#class-gltfcamera-property-fov) | `1.3089969` |
| [bool](class_bool.md#class-bool) | [perspective](#class-gltfcamera-property-perspective) | `true` |
| [float](class_float.md#class-float) | [size\_mag](#class-gltfcamera-property-size-mag) | `0.5` |

## Methods

|     |     |
| --- | --- |
| [GLTFCamera](#class-gltfcamera) | [from\_dictionary](#class-gltfcamera-method-from-dictionary)(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static |
| [GLTFCamera](#class-gltfcamera) | [from\_node](#class-gltfcamera-method-from-node)(camera\_node: [Camera3D](class_camera3d.md#class-camera3d)) static |
| [Dictionary](class_dictionary.md#class-dictionary) | [to\_dictionary](#class-gltfcamera-method-to-dictionary)() const |
| [Camera3D](class_camera3d.md#class-camera3d) | [to\_node](#class-gltfcamera-method-to-node)() const |

* * *

## Property Descriptions

[float](class_float.md#class-float) **depth\_far** = `4000.0` [🔗](#class-gltfcamera-property-depth-far)

- void **set\_depth\_far**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth\_far**()


The distance to the far culling boundary for this camera relative to its local Z axis, in meters. This maps to glTF's `zfar` property.

* * *

[float](class_float.md#class-float) **depth\_near** = `0.05` [🔗](#class-gltfcamera-property-depth-near)

- void **set\_depth\_near**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_depth\_near**()


The distance to the near culling boundary for this camera relative to its local Z axis, in meters. This maps to glTF's `znear` property.

* * *

[float](class_float.md#class-float) **fov** = `1.3089969` [🔗](#class-gltfcamera-property-fov)

- void **set\_fov**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_fov**()


The FOV of the camera. This class and glTF define the camera FOV in radians, while Godot uses degrees. This maps to glTF's `yfov` property. This value is only used for perspective cameras, when [perspective](#class-gltfcamera-property-perspective) is `true`.

* * *

[bool](class_bool.md#class-bool) **perspective** = `true` [🔗](#class-gltfcamera-property-perspective)

- void **set\_perspective**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_perspective**()


If `true`, the camera is in perspective mode. Otherwise, the camera is in orthographic/orthogonal mode. This maps to glTF's camera `type` property. See [Camera3D.projection](class_camera3d.md#class-camera3d-property-projection) and the glTF spec for more information.

* * *

[float](class_float.md#class-float) **size\_mag** = `0.5` [🔗](#class-gltfcamera-property-size-mag)

- void **set\_size\_mag**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_size\_mag**()


The size of the camera. This class and glTF define the camera size magnitude as a radius in meters, while Godot defines it as a diameter in meters. This maps to glTF's `ymag` property. This value is only used for orthographic/orthogonal cameras, when [perspective](#class-gltfcamera-property-perspective) is `false`.

* * *

## Method Descriptions

[GLTFCamera](#class-gltfcamera) **from\_dictionary**(dictionary: [Dictionary](class_dictionary.md#class-dictionary)) static [🔗](#class-gltfcamera-method-from-dictionary)

Creates a new GLTFCamera instance by parsing the given [Dictionary](class_dictionary.md#class-dictionary).

* * *

[GLTFCamera](#class-gltfcamera) **from\_node**(camera\_node: [Camera3D](class_camera3d.md#class-camera3d)) static [🔗](#class-gltfcamera-method-from-node)

Create a new GLTFCamera instance from the given Godot [Camera3D](class_camera3d.md#class-camera3d) node.

* * *

[Dictionary](class_dictionary.md#class-dictionary) **to\_dictionary**() const [🔗](#class-gltfcamera-method-to-dictionary)

Serializes this GLTFCamera instance into a [Dictionary](class_dictionary.md#class-dictionary).

* * *

[Camera3D](class_camera3d.md#class-camera3d) **to\_node**() const [🔗](#class-gltfcamera-method-to-node)

Converts this GLTFCamera instance into a Godot [Camera3D](class_camera3d.md#class-camera3d) node.

[Previous](class_gltfbufferview.md "GLTFBufferView") [Next](class_gltfdocument.md "GLTFDocument")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfbufferview.md "GLTFBufferView") [Next](class_gltfdocument.md "GLTFDocument")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).