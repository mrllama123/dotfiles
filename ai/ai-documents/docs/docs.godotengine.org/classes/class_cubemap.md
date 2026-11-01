---
title: Cubemap — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cubemap.html
crawled_at: "2026-08-13T10:41:28+12:00"
content_hash: b1f17271c6ccdd5b4ab5fe6a37a1021c733e74f7cac33f37c6671959d7f808ca
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Cubemap

* * *

# Cubemap

**Inherits:** [ImageTextureLayered](class_imagetexturelayered.md#class-imagetexturelayered) **<** [TextureLayered](class_texturelayered.md#class-texturelayered) **<** [Texture](class_texture.md#class-texture) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Six square textures representing the faces of a cube. Commonly used as a skybox.

## Description

A cubemap is made of 6 textures organized in layers. They are typically used for faking reflections in 3D rendering (see [ReflectionProbe](class_reflectionprobe.md#class-reflectionprobe)). It can be used to make an object look as if it's reflecting its surroundings. This usually delivers much better performance than other reflection methods.

This resource is typically used as a uniform in custom shaders. Few core Godot methods make use of **Cubemap** resources.

To create such a texture file yourself, reimport your image files using the Godot Editor import presets. To create a Cubemap from code, use [ImageTextureLayered.create\_from\_images()](class_imagetexturelayered.md#class-imagetexturelayered-method-create-from-images) on an instance of the Cubemap class.

The expected image order is X+, X-, Y+, Y-, Z+, Z- (in Godot's coordinate system, so Y+ is "up" and Z- is "forward"). You can use one of the following templates as a base:

- [2×3 cubemap template (default layout option)](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_2x3.webp)

- [3×2 cubemap template](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_3x2.webp)

- [1×6 cubemap template](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_1x6.webp)

- [6×1 cubemap template](https://raw.githubusercontent.com/godotengine/godot-docs/master/tutorials/assets_pipeline/img/cubemap_template_6x1.webp)


**Note:** Godot doesn't support using cubemaps in a [PanoramaSkyMaterial](class_panoramaskymaterial.md#class-panoramaskymaterial). To use a cubemap as a skybox, convert the default [PanoramaSkyMaterial](class_panoramaskymaterial.md#class-panoramaskymaterial) to a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) using the **Convert to ShaderMaterial** resource dropdown option, then replace its code with the following:

```
shader_type sky;

uniform samplerCube source_panorama : filter_linear, source_color, hint_default_black;
uniform float exposure : hint_range(0, 128) = 1.0;

void sky() {
    // If importing a cubemap from another engine, you may need to flip one of the `EYEDIR` components below
    // by replacing it with `-EYEDIR`.
    vec3 eyedir = vec3(EYEDIR.x, EYEDIR.y, EYEDIR.z);
    COLOR = texture(source_panorama, eyedir).rgb * exposure;
}

```

After replacing the shader code and saving, specify the imported Cubemap resource in the Shader Parameters section of the ShaderMaterial in the inspector.

Alternatively, you can use [this tool](https://danilw.github.io/GLSL-howto/cubemap_to_panorama_js/cubemap_to_panorama.html) to convert a cubemap to an equirectangular sky map and use [PanoramaSkyMaterial](class_panoramaskymaterial.md#class-panoramaskymaterial) as usual.

## Methods

|     |     |
| --- | --- |
| [Resource](class_resource.md#class-resource) | [create\_placeholder](#class-cubemap-method-create-placeholder)() const |

* * *

## Method Descriptions

[Resource](class_resource.md#class-resource) **create\_placeholder**() const [🔗](#class-cubemap-method-create-placeholder)

Creates a placeholder version of this resource ( [PlaceholderCubemap](class_placeholdercubemap.md#class-placeholdercubemap)).

[Previous](class_csharpscript.md "CSharpScript") [Next](class_cubemaparray.md "CubemapArray")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_csharpscript.md "CSharpScript") [Next](class_cubemaparray.md "CubemapArray")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).