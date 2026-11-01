---
title: CubemapArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cubemaparray.html
crawled_at: "2026-08-13T10:26:02+12:00"
content_hash: 334bea46297a1190cbcd5a7f33b85c2011525596307511605f59bf496668d294
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CubemapArray

* * *

# CubemapArray

**Inherits:** [ImageTextureLayered](class_imagetexturelayered.md#class-imagetexturelayered) **<** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

An array of [Cubemap](class_cubemap.md#class-cubemap) s, stored together and with a single reference.

## Description

**CubemapArray** s are made of an array of [Cubemap](class_cubemap.md#class-cubemap) s. Like [Cubemap](class_cubemap.md#class-cubemap) s, they are made of multiple textures, the amount of which must be divisible by 6 (one for each face of the cube).

The primary benefit of **CubemapArray** s is that they can be accessed in shader code using a single texture reference. In other words, you can pass multiple [Cubemap](class_cubemap.md#class-cubemap) s into a shader using a single **CubemapArray**. [Cubemap](class_cubemap.md#class-cubemap) s are allocated in adjacent cache regions on the GPU, which makes **CubemapArray** s the most efficient way to store multiple [Cubemap](class_cubemap.md#class-cubemap) s.

Godot uses **CubemapArray** s internally for many effects, including the [Sky](class_sky.md#class-sky) if you set [ProjectSettings.rendering/reflections/sky\_reflections/texture\_array\_reflections](class_projectsettings.md#class-projectsettings-property-rendering-reflections-sky-reflections-texture-array-reflections) to `true`.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a CubemapArray from code, use [ImageTextureLayered.create\_from\_images()](class_imagetexturelayered.md#class-imagetexturelayered-method-create-from-images) on an instance of the CubemapArray class.

The expected image order is X+, X-, Y+, Y-, Z+, Z- (in Godot's coordinate system, so Y+ is "up" and Z- is "forward"). You can use one of the following templates as a base:

- [2×3 cubemap template (default layout option)](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp)

- [3×2 cubemap template](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp)

- [1×6 cubemap template](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp)

- [6×1 cubemap template](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp)


Multiple layers are stacked on top of each other when using the default vertical import option (with the first layer at the top). Alternatively, you can choose a horizontal layout in the import options (with the first layer at the left).

**Note:** **CubemapArray** is not supported in the Compatibility renderer due to graphics API limitations.

## Methods

|     |     |
| --- | --- |
| [Resource](class_resource.md#class-resource) | [create\_placeholder](#class-cubemaparray-method-create-placeholder)() const |

* * *

## Method Descriptions

[Resource](class_resource.md#class-resource) **create\_placeholder**() const [🔗](#class-cubemaparray-method-create-placeholder)

Creates a placeholder version of this resource ( [PlaceholderCubemapArray](class_placeholdercubemaparray.md#class-placeholdercubemaparray)).

[Previous](class_cubemap.md "Cubemap") [Next](class_curve.md "Curve")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_cubemap.md "Cubemap") [Next](class_curve.md "Curve")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).