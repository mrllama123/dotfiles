---
title: GLTFTextureSampler — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltftexturesampler.html
crawled_at: "2026-08-13T10:42:38+12:00"
content_hash: 215ed41c30af7d6789bbd0ab8d35e4947b6e8058943f89d8b35a0e1b92cae4c2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFTextureSampler

* * *

# GLTFTextureSampler

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a glTF texture sampler

## Description

Represents a texture sampler as defined by the base glTF spec. Texture samplers in glTF specify how to sample data from the texture's base image, when rendering the texture on an object.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [mag\_filter](#class-gltftexturesampler-property-mag-filter) | `9729` |
| [int](class_int.md#class-int) | [min\_filter](#class-gltftexturesampler-property-min-filter) | `9987` |
| [int](class_int.md#class-int) | [wrap\_s](#class-gltftexturesampler-property-wrap-s) | `10497` |
| [int](class_int.md#class-int) | [wrap\_t](#class-gltftexturesampler-property-wrap-t) | `10497` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **mag\_filter** = `9729` [🔗](#class-gltftexturesampler-property-mag-filter)

- void **set\_mag\_filter**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_mag\_filter**()


Texture's magnification filter, used when texture appears larger on screen than the source image.

* * *

[int](class_int.md#class-int) **min\_filter** = `9987` [🔗](#class-gltftexturesampler-property-min-filter)

- void **set\_min\_filter**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_min\_filter**()


Texture's minification filter, used when the texture appears smaller on screen than the source image.

* * *

[int](class_int.md#class-int) **wrap\_s** = `10497` [🔗](#class-gltftexturesampler-property-wrap-s)

- void **set\_wrap\_s**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_wrap\_s**()


Wrapping mode to use for S-axis (horizontal) texture coordinates.

* * *

[int](class_int.md#class-int) **wrap\_t** = `10497` [🔗](#class-gltftexturesampler-property-wrap-t)

- void **set\_wrap\_t**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_wrap\_t**()


Wrapping mode to use for T-axis (vertical) texture coordinates.

[Previous](class_gltftexture.md "GLTFTexture") [Next](class_gradient.md "Gradient")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltftexture.md "GLTFTexture") [Next](class_gradient.md "Gradient")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).