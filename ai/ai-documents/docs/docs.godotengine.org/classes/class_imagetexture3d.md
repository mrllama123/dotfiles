---
title: ImageTexture3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_imagetexture3d.html
crawled_at: "2026-08-13T10:22:59+12:00"
content_hash: 9908a395f8dfbf857194781ca4aa32c1ac1a1b855ff4bd9add1e4970fe5fdbe8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ImageTexture3D

* * *

# ImageTexture3D

**Inherits:** [Texture3D](class_texture3d.md#class-texture3d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture with 3 dimensions.

## Description

**ImageTexture3D** is a 3-dimensional [ImageTexture](class_imagetexture.md#class-imagetexture) that has a width, height, and depth. See also [ImageTextureLayered](class_imagetexturelayered.md#class-imagetexturelayered).

3D textures are typically used to store density maps for [FogMaterial](class_fogmaterial.md#class-fogmaterial), color correction LUTs for [Environment](class_environment.md#class-environment), vector fields for [GPUParticlesAttractorVectorField3D](class_gpuparticlesattractorvectorfield3d.md#class-gpuparticlesattractorvectorfield3d) and collision maps for [GPUParticlesCollisionSDF3D](class_gpuparticlescollisionsdf3d.md#class-gpuparticlescollisionsdf3d). 3D textures can also be used in custom shaders.

## Methods

|     |     |
| --- | --- |
| [Error](class_@globalscope.md#enum-globalscope-error) | [create](#class-imagetexture3d-method-create)(format: [Format](class_image.md#enum-image-format), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) |
| void | [update](#class-imagetexture3d-method-update)(data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) |

* * *

## Method Descriptions

[Error](class_@globalscope.md#enum-globalscope-error) **create**(format: [Format](class_image.md#enum-image-format), width: [int](class_int.md#class-int), height: [int](class_int.md#class-int), depth: [int](class_int.md#class-int), use\_mipmaps: [bool](class_bool.md#class-bool), data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) [🔗](#class-imagetexture3d-method-create)

Creates the **ImageTexture3D** with specified `format`, `width`, `height`, and `depth`. If `use_mipmaps` is `true`, generates mipmaps for the **ImageTexture3D**.

* * *

void **update**(data: [Array](class_array.md#class-array)\[ [Image](class_image.md#class-image)\]) [🔗](#class-imagetexture3d-method-update)

Replaces the texture's existing data with the layers specified in `data`. The size of `data` must match the parameters that were used for [create()](#class-imagetexture3d-method-create). In other words, the texture cannot be resized or have its format changed by calling [update()](#class-imagetexture3d-method-update).

[Previous](class_imagetexture.md "ImageTexture") [Next](class_imagetexturelayered.md "ImageTextureLayered")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_imagetexture.md "ImageTexture") [Next](class_imagetexturelayered.md "ImageTextureLayered")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).