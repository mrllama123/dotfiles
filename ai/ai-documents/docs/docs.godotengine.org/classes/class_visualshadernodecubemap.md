---
title: VisualShaderNodeCubemap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodecubemap.html
crawled_at: "2026-08-13T10:19:35+12:00"
content_hash: 734aad157ff57c973abd8fc9f132d18bd7e70632cc50c09b1575ed41121545c3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeCubemap

* * *

# VisualShaderNodeCubemap

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Cubemap](class_cubemap.md#class-cubemap) sampling node to be used within the visual shader graph.

## Description

Translated to `texture(cubemap, vec3)` in the shader language. Returns a color vector and alpha channel as scalar.

## Properties

|     |     |     |
| --- | --- | --- |
| [TextureLayered](class_texturelayered.md#class-texturelayered) | [cube\_map](#class-visualshadernodecubemap-property-cube-map) |  |
| [Source](#enum-visualshadernodecubemap-source) | [source](#class-visualshadernodecubemap-property-source) | `0` |
| [TextureType](#enum-visualshadernodecubemap-texturetype) | [texture\_type](#class-visualshadernodecubemap-property-texture-type) | `0` |

* * *

## Enumerations

enum **Source**: [🔗](#enum-visualshadernodecubemap-source)

[Source](#enum-visualshadernodecubemap-source) **SOURCE\_TEXTURE** = `0`

Use the [Cubemap](class_cubemap.md#class-cubemap) set via [cube\_map](#class-visualshadernodecubemap-property-cube-map). If this is set to [source](#class-visualshadernodecubemap-property-source), the `samplerCube` port is ignored.

[Source](#enum-visualshadernodecubemap-source) **SOURCE\_PORT** = `1`

Use the [Cubemap](class_cubemap.md#class-cubemap) sampler reference passed via the `samplerCube` port. If this is set to [source](#class-visualshadernodecubemap-property-source), the [cube\_map](#class-visualshadernodecubemap-property-cube-map) texture is ignored.

[Source](#enum-visualshadernodecubemap-source) **SOURCE\_MAX** = `2`

Represents the size of the [Source](#enum-visualshadernodecubemap-source) enum.

* * *

enum **TextureType**: [🔗](#enum-visualshadernodecubemap-texturetype)

[TextureType](#enum-visualshadernodecubemap-texturetype) **TYPE\_DATA** = `0`

No hints are added to the uniform declaration.

[TextureType](#enum-visualshadernodecubemap-texturetype) **TYPE\_COLOR** = `1`

Adds `source_color` as hint to the uniform declaration for proper sRGB to linear conversion.

[TextureType](#enum-visualshadernodecubemap-texturetype) **TYPE\_NORMAL\_MAP** = `2`

Adds `hint_normal` as hint to the uniform declaration, which internally converts the texture for proper usage as normal map.

[TextureType](#enum-visualshadernodecubemap-texturetype) **TYPE\_MAX** = `3`

Represents the size of the [TextureType](#enum-visualshadernodecubemap-texturetype) enum.

* * *

## Property Descriptions

[TextureLayered](class_texturelayered.md#class-texturelayered) **cube\_map** [🔗](#class-visualshadernodecubemap-property-cube-map)

- void **set\_cube\_map**(value: [TextureLayered](class_texturelayered.md#class-texturelayered))

- [TextureLayered](class_texturelayered.md#class-texturelayered) **get\_cube\_map**()


The [Cubemap](class_cubemap.md#class-cubemap) texture to sample when using [SOURCE\_TEXTURE](#class-visualshadernodecubemap-constant-source-texture) as [source](#class-visualshadernodecubemap-property-source).

* * *

[Source](#enum-visualshadernodecubemap-source) **source** = `0` [🔗](#class-visualshadernodecubemap-property-source)

- void **set\_source**(value: [Source](#enum-visualshadernodecubemap-source))

- [Source](#enum-visualshadernodecubemap-source) **get\_source**()


Defines which source should be used for the sampling.

* * *

[TextureType](#enum-visualshadernodecubemap-texturetype) **texture\_type** = `0` [🔗](#class-visualshadernodecubemap-property-texture-type)

- void **set\_texture\_type**(value: [TextureType](#enum-visualshadernodecubemap-texturetype))

- [TextureType](#enum-visualshadernodecubemap-texturetype) **get\_texture\_type**()


Defines the type of data provided by the source texture.

[Previous](class_visualshadernodeconstant.md "VisualShaderNodeConstant") [Next](class_visualshadernodecubemapparameter.md "VisualShaderNodeCubemapParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeconstant.md "VisualShaderNodeConstant") [Next](class_visualshadernodecubemapparameter.md "VisualShaderNodeCubemapParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).