---
title: PanoramaSkyMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_panoramaskymaterial.html
crawled_at: "2026-08-13T10:36:57+12:00"
content_hash: e829922a658626f6d818d5d42328068464c8d3397e446fc28536a9427ff9145d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PanoramaSkyMaterial

* * *

# PanoramaSkyMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A material that provides a special texture to a [Sky](class_sky.md#class-sky), usually an HDR panorama.

## Description

A resource referenced in a [Sky](class_sky.md#class-sky) that is used to draw a background. **PanoramaSkyMaterial** functions similar to skyboxes in other engines, except it uses an equirectangular sky map instead of a [Cubemap](class_cubemap.md#class-cubemap).

Using an HDR panorama is strongly recommended for accurate, high-quality reflections. Godot supports the Radiance HDR ( `.hdr`) and OpenEXR ( `.exr`) image formats for this purpose.

You can use [this tool](https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html) to convert a cubemap to an equirectangular sky map.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [energy\_multiplier](#class-panoramaskymaterial-property-energy-multiplier) | `1.0` |
| [bool](class_bool.md#class-bool) | [filter](#class-panoramaskymaterial-property-filter) | `true` |
| [Texture2D](class_texture2d.md#class-texture2d) | [panorama](#class-panoramaskymaterial-property-panorama) |  |

* * *

## Property Descriptions

[float](class_float.md#class-float) **energy\_multiplier** = `1.0` [🔗](#class-panoramaskymaterial-property-energy-multiplier)

- void **set\_energy\_multiplier**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_energy\_multiplier**()


The sky's overall brightness multiplier. Higher values result in a brighter sky.

* * *

[bool](class_bool.md#class-bool) **filter** = `true` [🔗](#class-panoramaskymaterial-property-filter)

- void **set\_filtering\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_filtering\_enabled**()


A boolean value to determine if the background texture should be filtered or not.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **panorama** [🔗](#class-panoramaskymaterial-property-panorama)

- void **set\_panorama**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_panorama**()


[Texture2D](class_texture2d.md#class-texture2d) to be applied to the **PanoramaSkyMaterial**.

[Previous](class_packedscene.md "PackedScene") [Next](class_particleprocessmaterial.md "ParticleProcessMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_packedscene.md "PackedScene") [Next](class_particleprocessmaterial.md "ParticleProcessMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).