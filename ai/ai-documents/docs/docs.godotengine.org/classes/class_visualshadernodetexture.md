---
title: VisualShaderNodeTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetexture.html
crawled_at: "2026-08-13T10:34:21+12:00"
content_hash: 3b51eff3784d1d397a21759cb0fbe47ed74a985ca1a265964e578227f434e81e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTexture

* * *

# VisualShaderNodeTexture

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Performs a 2D texture lookup within the visual shader graph.

## Description

Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.

## Properties

|     |     |     |
| --- | --- | --- |
| [Source](#enum-visualshadernodetexture-source) | [source](#class-visualshadernodetexture-property-source) | `0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [texture](#class-visualshadernodetexture-property-texture) |  |
| [TextureType](#enum-visualshadernodetexture-texturetype) | [texture\_type](#class-visualshadernodetexture-property-texture-type) | `0` |

* * *

## Enumerations

enum **Source**: [🔗](#enum-visualshadernodetexture-source)

[Source](#enum-visualshadernodetexture-source) **SOURCE\_TEXTURE** = `0`

Use the texture given as an argument for this function.

[Source](#enum-visualshadernodetexture-source) **SOURCE\_SCREEN** = `1`

Use the current viewport's texture as the source.

[Source](#enum-visualshadernodetexture-source) **SOURCE\_2D\_TEXTURE** = `2`

Use the texture from this shader's texture built-in (e.g. a texture of a [Sprite2D](class_sprite2d.md#class-sprite2d)).

[Source](#enum-visualshadernodetexture-source) **SOURCE\_2D\_NORMAL** = `3`

Use the texture from this shader's normal map built-in.

[Source](#enum-visualshadernodetexture-source) **SOURCE\_DEPTH** = `4`

Use the depth texture captured during the depth prepass. Only available when the depth prepass is used (i.e. in spatial shaders and in the forward\_plus or gl\_compatibility renderers).

[Source](#enum-visualshadernodetexture-source) **SOURCE\_PORT** = `5`

Use the texture provided in the input port for this function.

[Source](#enum-visualshadernodetexture-source) **SOURCE\_3D\_NORMAL** = `6`

Use the normal buffer captured during the depth prepass. Only available when the normal-roughness buffer is available (i.e. in spatial shaders and in the forward\_plus renderer).

[Source](#enum-visualshadernodetexture-source) **SOURCE\_ROUGHNESS** = `7`

Use the roughness buffer captured during the depth prepass. Only available when the normal-roughness buffer is available (i.e. in spatial shaders and in the forward\_plus renderer).

[Source](#enum-visualshadernodetexture-source) **SOURCE\_MAX** = `8`

Represents the size of the [Source](#enum-visualshadernodetexture-source) enum.

* * *

enum **TextureType**: [🔗](#enum-visualshadernodetexture-texturetype)

[TextureType](#enum-visualshadernodetexture-texturetype) **TYPE\_DATA** = `0`

No hints are added to the uniform declaration.

[TextureType](#enum-visualshadernodetexture-texturetype) **TYPE\_COLOR** = `1`

Adds `source_color` as hint to the uniform declaration for proper sRGB to linear conversion.

[TextureType](#enum-visualshadernodetexture-texturetype) **TYPE\_NORMAL\_MAP** = `2`

Adds `hint_normal` as hint to the uniform declaration, which internally converts the texture for proper usage as normal map.

[TextureType](#enum-visualshadernodetexture-texturetype) **TYPE\_MAX** = `3`

Represents the size of the [TextureType](#enum-visualshadernodetexture-texturetype) enum.

* * *

## Property Descriptions

[Source](#enum-visualshadernodetexture-source) **source** = `0` [🔗](#class-visualshadernodetexture-property-source)

- void **set\_source**(value: [Source](#enum-visualshadernodetexture-source))

- [Source](#enum-visualshadernodetexture-source) **get\_source**()


Determines the source for the lookup.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **texture** [🔗](#class-visualshadernodetexture-property-texture)

- void **set\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_texture**()


The source texture, if needed for the selected [source](#class-visualshadernodetexture-property-source).

* * *

[TextureType](#enum-visualshadernodetexture-texturetype) **texture\_type** = `0` [🔗](#class-visualshadernodetexture-property-texture-type)

- void **set\_texture\_type**(value: [TextureType](#enum-visualshadernodetexture-texturetype))

- [TextureType](#enum-visualshadernodetexture-texturetype) **get\_texture\_type**()


Specifies the type of the texture if [source](#class-visualshadernodetexture-property-source) is set to [SOURCE\_TEXTURE](#class-visualshadernodetexture-constant-source-texture).

[Previous](class_visualshadernodeswitch.md "VisualShaderNodeSwitch") [Next](class_visualshadernodetexture2darray.md "VisualShaderNodeTexture2DArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeswitch.md "VisualShaderNodeSwitch") [Next](class_visualshadernodetexture2darray.md "VisualShaderNodeTexture2DArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).