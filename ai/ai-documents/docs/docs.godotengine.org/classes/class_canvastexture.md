---
title: CanvasTexture — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_canvastexture.html
crawled_at: "2026-08-13T10:33:03+12:00"
content_hash: 985b428cc0ae0f7251c41fe7058a8e69576008109dff591a8bec83ae3927bfe8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CanvasTexture

* * *

# CanvasTexture

**Inherits:** [Texture2D](class_texture2d.md#class-texture2d) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Texture with optional normal and specular maps for use in 2D rendering.

## Description

**CanvasTexture** is an alternative to [ImageTexture](class_imagetexture.md#class-imagetexture) for 2D rendering. It allows using normal maps and specular maps in any node that inherits from [CanvasItem](class_canvasitem.md#class-canvasitem). **CanvasTexture** also allows overriding the texture's filter and repeat mode independently of the node's properties (or the project settings).

**Note:** **CanvasTexture** cannot be used in 3D. It will not display correctly when applied to any [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d), such as [Sprite3D](class_sprite3d.md#class-sprite3d) or [Decal](class_decal.md#class-decal). For physically-based materials in 3D, use [BaseMaterial3D](class_basematerial3d.md#class-basematerial3d) instead.

## Tutorials

- [2D Lights and Shadows](../tutorials/2d/2d_lights_and_shadows.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Texture2D](class_texture2d.md#class-texture2d) | [diffuse\_texture](#class-canvastexture-property-diffuse-texture) |  |
| [Texture2D](class_texture2d.md#class-texture2d) | [normal\_texture](#class-canvastexture-property-normal-texture) |  |
| [bool](class_bool.md#class-bool) | resource\_local\_to\_scene | `false` (overrides [Resource](class_resource.md#class-resource-property-resource-local-to-scene)) |
| [Color](class_color.md#class-color) | [specular\_color](#class-canvastexture-property-specular-color) | `Color(1, 1, 1, 1)` |
| [float](class_float.md#class-float) | [specular\_shininess](#class-canvastexture-property-specular-shininess) | `1.0` |
| [Texture2D](class_texture2d.md#class-texture2d) | [specular\_texture](#class-canvastexture-property-specular-texture) |  |
| [TextureFilter](class_canvasitem.md#enum-canvasitem-texturefilter) | [texture\_filter](#class-canvastexture-property-texture-filter) | `0` |
| [TextureRepeat](class_canvasitem.md#enum-canvasitem-texturerepeat) | [texture\_repeat](#class-canvastexture-property-texture-repeat) | `0` |

* * *

## Property Descriptions

[Texture2D](class_texture2d.md#class-texture2d) **diffuse\_texture** [🔗](#class-canvastexture-property-diffuse-texture)

- void **set\_diffuse\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_diffuse\_texture**()


The diffuse (color) texture to use. This is the main texture you want to set in most cases.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **normal\_texture** [🔗](#class-canvastexture-property-normal-texture)

- void **set\_normal\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_normal\_texture**()


The normal map texture to use. Only has a visible effect if [Light2D](class_light2d.md#class-light2d) s are affecting this **CanvasTexture**.

**Note:** Godot expects the normal map to use X+, Y+, and Z+ coordinates. See [this page](http://wiki.polycount.com/wiki/Normal_Map_Technical_Details#Common_Swizzle_Coordinates) for a comparison of normal map coordinates expected by popular engines.

* * *

[Color](class_color.md#class-color) **specular\_color** = `Color(1, 1, 1, 1)` [🔗](#class-canvastexture-property-specular-color)

- void **set\_specular\_color**(value: [Color](class_color.md#class-color))

- [Color](class_color.md#class-color) **get\_specular\_color**()


The multiplier for specular reflection colors. The [Light2D](class_light2d.md#class-light2d)'s color is also taken into account when determining the reflection color. Only has a visible effect if [Light2D](class_light2d.md#class-light2d) s are affecting this **CanvasTexture**.

* * *

[float](class_float.md#class-float) **specular\_shininess** = `1.0` [🔗](#class-canvastexture-property-specular-shininess)

- void **set\_specular\_shininess**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_specular\_shininess**()


The specular exponent for [Light2D](class_light2d.md#class-light2d) specular reflections. Higher values result in a more glossy/"wet" look, with reflections becoming more localized and less visible overall. The default value of `1.0` disables specular reflections entirely. Only has a visible effect if [Light2D](class_light2d.md#class-light2d) s are affecting this **CanvasTexture**.

* * *

[Texture2D](class_texture2d.md#class-texture2d) **specular\_texture** [🔗](#class-canvastexture-property-specular-texture)

- void **set\_specular\_texture**(value: [Texture2D](class_texture2d.md#class-texture2d))

- [Texture2D](class_texture2d.md#class-texture2d) **get\_specular\_texture**()


The specular map to use for [Light2D](class_light2d.md#class-light2d) specular reflections. This should be a grayscale or colored texture, with brighter areas resulting in a higher [specular\_shininess](#class-canvastexture-property-specular-shininess) value. Using a colored [specular\_texture](#class-canvastexture-property-specular-texture) allows controlling specular shininess on a per-channel basis. Only has a visible effect if [Light2D](class_light2d.md#class-light2d) s are affecting this **CanvasTexture**.

* * *

[TextureFilter](class_canvasitem.md#enum-canvasitem-texturefilter) **texture\_filter** = `0` [🔗](#class-canvastexture-property-texture-filter)

- void **set\_texture\_filter**(value: [TextureFilter](class_canvasitem.md#enum-canvasitem-texturefilter))

- [TextureFilter](class_canvasitem.md#enum-canvasitem-texturefilter) **get\_texture\_filter**()


The texture filtering mode to use when drawing this **CanvasTexture**.

* * *

[TextureRepeat](class_canvasitem.md#enum-canvasitem-texturerepeat) **texture\_repeat** = `0` [🔗](#class-canvastexture-property-texture-repeat)

- void **set\_texture\_repeat**(value: [TextureRepeat](class_canvasitem.md#enum-canvasitem-texturerepeat))

- [TextureRepeat](class_canvasitem.md#enum-canvasitem-texturerepeat) **get\_texture\_repeat**()


The texture repeat mode to use when drawing this **CanvasTexture**.

[Previous](class_canvasitemmaterial.md "CanvasItemMaterial") [Next](class_capsulemesh.md "CapsuleMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_canvasitemmaterial.md "CanvasItemMaterial") [Next](class_capsulemesh.md "CapsuleMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).