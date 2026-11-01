---
title: GLTFTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_gltftexture.html
crawled_at: "2026-08-13T10:26:47+12:00"
content_hash: 7fa9095e38091de2a42d806ca26158b20f4aa4a2084b30fcf3decffd4a724944
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - GLTFTexture

* * *

# GLTFTexture

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

GLTFTexture represents a texture in a glTF file.

## Tutorials

- [Runtime file loading and saving](../tutorials/io/runtime_file_loading_and_saving.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [int](class_int.md#class-int) | [sampler](#class-gltftexture-property-sampler) | `-1` |
| [int](class_int.md#class-int) | [src\_image](#class-gltftexture-property-src-image) | `-1` |

* * *

## Property Descriptions

[int](class_int.md#class-int) **sampler** = `-1` [🔗](#class-gltftexture-property-sampler)

- void **set\_sampler**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sampler**()


ID of the texture sampler to use when sampling the image. If -1, then the default texture sampler is used (linear filtering, and repeat wrapping in both axes).

* * *

[int](class_int.md#class-int) **src\_image** = `-1` [🔗](#class-gltftexture-property-src-image)

- void **set\_src\_image**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_src\_image**()


The index of the image associated with this texture, see [GLTFState.get\_images()](class_gltfstate.md#class-gltfstate-method-get-images). If -1, then this texture does not have an image assigned.

[Previous](class_gltfstate.md "GLTFState") [Next](class_gltftexturesampler.md "GLTFTextureSampler")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_gltfstate.md "GLTFState") [Next](class_gltftexturesampler.md "GLTFTextureSampler")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).