---
title: VisualShaderNodeTextureParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetextureparameter.html
crawled_at: "2026-08-13T10:29:18+12:00"
content_hash: 802d36abdfeff9b1f062a8c6765151411afc54105498706e795d14d75efce969
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTextureParameter

* * *

# VisualShaderNodeTextureParameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeCubemapParameter](class_visualshadernodecubemapparameter.md#class-visualshadernodecubemapparameter), [VisualShaderNodeTexture2DArrayParameter](class_visualshadernodetexture2darrayparameter.md#class-visualshadernodetexture2darrayparameter), [VisualShaderNodeTexture2DParameter](class_visualshadernodetexture2dparameter.md#class-visualshadernodetexture2dparameter), [VisualShaderNodeTexture3DParameter](class_visualshadernodetexture3dparameter.md#class-visualshadernodetexture3dparameter), [VisualShaderNodeTextureParameterTriplanar](class_visualshadernodetextureparametertriplanar.md#class-visualshadernodetextureparametertriplanar)

Performs a uniform texture lookup within the visual shader graph.

## Description

Performs a lookup operation on the texture provided as a uniform for the shader.

## Properties

|     |     |     |
| --- | --- | --- |
| [ColorDefault](#enum-visualshadernodetextureparameter-colordefault) | [color\_default](#class-visualshadernodetextureparameter-property-color-default) | `0` |
| [TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) | [texture\_filter](#class-visualshadernodetextureparameter-property-texture-filter) | `0` |
| [TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) | [texture\_repeat](#class-visualshadernodetextureparameter-property-texture-repeat) | `0` |
| [TextureSource](#enum-visualshadernodetextureparameter-texturesource) | [texture\_source](#class-visualshadernodetextureparameter-property-texture-source) | `0` |
| [TextureType](#enum-visualshadernodetextureparameter-texturetype) | [texture\_type](#class-visualshadernodetextureparameter-property-texture-type) | `0` |

* * *

## Enumerations

enum **TextureType**: [🔗](#enum-visualshadernodetextureparameter-texturetype)

[TextureType](#enum-visualshadernodetextureparameter-texturetype) **TYPE\_DATA** = `0`

No hints are added to the uniform declaration.

[TextureType](#enum-visualshadernodetextureparameter-texturetype) **TYPE\_COLOR** = `1`

Adds `source_color` as hint to the uniform declaration for proper sRGB to linear conversion.

[TextureType](#enum-visualshadernodetextureparameter-texturetype) **TYPE\_NORMAL\_MAP** = `2`

Adds `hint_normal` as hint to the uniform declaration, which internally converts the texture for proper usage as normal map.

[TextureType](#enum-visualshadernodetextureparameter-texturetype) **TYPE\_ANISOTROPY** = `3`

Adds `hint_anisotropy` as hint to the uniform declaration to use for a flowmap.

[TextureType](#enum-visualshadernodetextureparameter-texturetype) **TYPE\_MAX** = `4`

Represents the size of the [TextureType](#enum-visualshadernodetextureparameter-texturetype) enum.

* * *

enum **ColorDefault**: [🔗](#enum-visualshadernodetextureparameter-colordefault)

[ColorDefault](#enum-visualshadernodetextureparameter-colordefault) **COLOR\_DEFAULT\_WHITE** = `0`

Defaults to fully opaque white color.

[ColorDefault](#enum-visualshadernodetextureparameter-colordefault) **COLOR\_DEFAULT\_BLACK** = `1`

Defaults to fully opaque black color.

[ColorDefault](#enum-visualshadernodetextureparameter-colordefault) **COLOR\_DEFAULT\_TRANSPARENT** = `2`

Defaults to fully transparent black color.

[ColorDefault](#enum-visualshadernodetextureparameter-colordefault) **COLOR\_DEFAULT\_MAX** = `3`

Represents the size of the [ColorDefault](#enum-visualshadernodetextureparameter-colordefault) enum.

* * *

enum **TextureFilter**: [🔗](#enum-visualshadernodetextureparameter-texturefilter)

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_DEFAULT** = `0`

Sample the texture using the filter determined by the node this shader is attached to.

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_NEAREST** = `1`

The texture filter reads from the nearest pixel only. This makes the texture look pixelated from up close, and grainy from a distance (due to mipmaps not being sampled).

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_LINEAR** = `2`

The texture filter blends between the nearest 4 pixels. This makes the texture look smooth from up close, and grainy from a distance (due to mipmaps not being sampled).

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_NEAREST\_MIPMAP** = `3`

The texture filter reads from the nearest pixel and blends between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look pixelated from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_LINEAR\_MIPMAP** = `4`

The texture filter blends between the nearest 4 pixels and between the nearest 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`). This makes the texture look smooth from up close, and smooth from a distance.

Use this for non-pixel art textures that may be viewed at a low scale (e.g. due to [Camera2D](class_camera2d.md#class-camera2d) zoom or sprite scaling), as mipmaps are important to smooth out pixels that are smaller than on-screen pixels.

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_NEAREST\_MIPMAP\_ANISOTROPIC** = `5`

The texture filter reads from the nearest pixel and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look pixelated from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

**Note:** This texture filter is rarely useful in 2D projects. [FILTER\_NEAREST\_MIPMAP](#class-visualshadernodetextureparameter-constant-filter-nearest-mipmap) is usually more appropriate in this case.

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_LINEAR\_MIPMAP\_ANISOTROPIC** = `6`

The texture filter blends between the nearest 4 pixels and blends between 2 mipmaps (or uses the nearest mipmap if [ProjectSettings.rendering/textures/default\_filters/use\_nearest\_mipmap\_filter](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-use-nearest-mipmap-filter) is `true`) based on the angle between the surface and the camera view. This makes the texture look smooth from up close, and smooth from a distance. Anisotropic filtering improves texture quality on surfaces that are almost in line with the camera, but is slightly slower. The anisotropic filtering level can be changed by adjusting [ProjectSettings.rendering/textures/default\_filters/anisotropic\_filtering\_level](class_projectsettings.md#class-projectsettings-property-rendering-textures-default-filters-anisotropic-filtering-level).

**Note:** This texture filter is rarely useful in 2D projects. [FILTER\_LINEAR\_MIPMAP](#class-visualshadernodetextureparameter-constant-filter-linear-mipmap) is usually more appropriate in this case.

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **FILTER\_MAX** = `7`

Represents the size of the [TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) enum.

* * *

enum **TextureRepeat**: [🔗](#enum-visualshadernodetextureparameter-texturerepeat)

[TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) **REPEAT\_DEFAULT** = `0`

Sample the texture using the repeat mode determined by the node this shader is attached to.

[TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) **REPEAT\_ENABLED** = `1`

Texture will repeat normally.

[TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) **REPEAT\_DISABLED** = `2`

Texture will not repeat.

[TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) **REPEAT\_MAX** = `3`

Represents the size of the [TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) enum.

* * *

enum **TextureSource**: [🔗](#enum-visualshadernodetextureparameter-texturesource)

[TextureSource](#enum-visualshadernodetextureparameter-texturesource) **SOURCE\_NONE** = `0`

The texture source is not specified in the shader.

[TextureSource](#enum-visualshadernodetextureparameter-texturesource) **SOURCE\_SCREEN** = `1`

The texture source is the screen texture which captures all opaque objects drawn this frame.

[TextureSource](#enum-visualshadernodetextureparameter-texturesource) **SOURCE\_DEPTH** = `2`

The texture source is the depth texture from the depth prepass.

[TextureSource](#enum-visualshadernodetextureparameter-texturesource) **SOURCE\_NORMAL\_ROUGHNESS** = `3`

The texture source is the normal-roughness buffer from the depth prepass.

[TextureSource](#enum-visualshadernodetextureparameter-texturesource) **SOURCE\_MAX** = `4`

Represents the size of the [TextureSource](#enum-visualshadernodetextureparameter-texturesource) enum.

* * *

## Property Descriptions

[ColorDefault](#enum-visualshadernodetextureparameter-colordefault) **color\_default** = `0` [🔗](#class-visualshadernodetextureparameter-property-color-default)

- void **set\_color\_default**(value: [ColorDefault](#enum-visualshadernodetextureparameter-colordefault))

- [ColorDefault](#enum-visualshadernodetextureparameter-colordefault) **get\_color\_default**()


Sets the default color if no texture is assigned to the uniform.

* * *

[TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **texture\_filter** = `0` [🔗](#class-visualshadernodetextureparameter-property-texture-filter)

- void **set\_texture\_filter**(value: [TextureFilter](#enum-visualshadernodetextureparameter-texturefilter))

- [TextureFilter](#enum-visualshadernodetextureparameter-texturefilter) **get\_texture\_filter**()


Sets the texture filtering mode.

* * *

[TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) **texture\_repeat** = `0` [🔗](#class-visualshadernodetextureparameter-property-texture-repeat)

- void **set\_texture\_repeat**(value: [TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat))

- [TextureRepeat](#enum-visualshadernodetextureparameter-texturerepeat) **get\_texture\_repeat**()


Sets the texture repeating mode.

* * *

[TextureSource](#enum-visualshadernodetextureparameter-texturesource) **texture\_source** = `0` [🔗](#class-visualshadernodetextureparameter-property-texture-source)

- void **set\_texture\_source**(value: [TextureSource](#enum-visualshadernodetextureparameter-texturesource))

- [TextureSource](#enum-visualshadernodetextureparameter-texturesource) **get\_texture\_source**()


Sets the texture source mode. Used for reading from the screen, depth, or normal\_roughness texture.

* * *

[TextureType](#enum-visualshadernodetextureparameter-texturetype) **texture\_type** = `0` [🔗](#class-visualshadernodetextureparameter-property-texture-type)

- void **set\_texture\_type**(value: [TextureType](#enum-visualshadernodetextureparameter-texturetype))

- [TextureType](#enum-visualshadernodetextureparameter-texturetype) **get\_texture\_type**()


Defines the type of data provided by the source texture.

[Previous](class_visualshadernodetexture3dparameter.md "VisualShaderNodeTexture3DParameter") [Next](class_visualshadernodetextureparametertriplanar.md "VisualShaderNodeTextureParameterTriplanar")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetexture3dparameter.md "VisualShaderNodeTexture3DParameter") [Next](class_visualshadernodetextureparametertriplanar.md "VisualShaderNodeTextureParameterTriplanar")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).