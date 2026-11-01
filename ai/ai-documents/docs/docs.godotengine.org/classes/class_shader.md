---
title: Shader — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shader.html
crawled_at: "2026-08-13T10:39:33+12:00"
content_hash: 53568abe864ca845ab62de6071ef3aed4ff4879ab9810427e990da4d893bdd6d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - Shader

* * *

# Shader

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShader](class_visualshader.md#class-visualshader)

A shader implemented in the Godot shading language.

## Description

A custom shader program implemented in the Godot shading language, saved with the `.gdshader` extension.

This class is used by a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) and allows you to write your own custom behavior for rendering visual items or updating particle information. For a detailed explanation and usage, please see the tutorials linked below.

## Tutorials

- [Shaders documentation index](../tutorials/shaders/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [code](#class-shader-property-code) | `""` |

## Methods

|     |     |
| --- | --- |
| [Texture](class_texture.md#class-texture) | [get\_default\_texture\_parameter](#class-shader-method-get-default-texture-parameter)(name: [StringName](class_stringname.md#class-stringname), index: [int](class_int.md#class-int) = 0) const |
| [Mode](#enum-shader-mode) | [get\_mode](#class-shader-method-get-mode)() const |
| [Array](class_array.md#class-array) | [get\_shader\_uniform\_list](#class-shader-method-get-shader-uniform-list)(get\_groups: [bool](class_bool.md#class-bool) = false) |
| void | [inspect\_native\_shader\_code](#class-shader-method-inspect-native-shader-code)() |
| void | [set\_default\_texture\_parameter](#class-shader-method-set-default-texture-parameter)(name: [StringName](class_stringname.md#class-stringname), texture: [Texture](class_texture.md#class-texture), index: [int](class_int.md#class-int) = 0) |

* * *

## Enumerations

enum **Mode**: [🔗](#enum-shader-mode)

[Mode](#enum-shader-mode) **MODE\_SPATIAL** = `0`

Mode used to draw all 3D objects.

[Mode](#enum-shader-mode) **MODE\_CANVAS\_ITEM** = `1`

Mode used to draw all 2D objects.

[Mode](#enum-shader-mode) **MODE\_PARTICLES** = `2`

Mode used to calculate particle information on a per-particle basis. Not used for drawing.

[Mode](#enum-shader-mode) **MODE\_SKY** = `3`

Mode used for drawing skies. Only works with shaders attached to [Sky](class_sky.md#class-sky) objects.

[Mode](#enum-shader-mode) **MODE\_FOG** = `4`

Mode used for setting the color and density of volumetric fog effect.

* * *

## Property Descriptions

[String](class_string.md#class-string) **code** = `""` [🔗](#class-shader-property-code)

- void **set\_code**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_code**()


Returns the shader's code as the user has written it, not the full generated code used internally.

* * *

## Method Descriptions

[Texture](class_texture.md#class-texture) **get\_default\_texture\_parameter**(name: [StringName](class_stringname.md#class-stringname), index: [int](class_int.md#class-int) = 0) const [🔗](#class-shader-method-get-default-texture-parameter)

Returns the texture that is set as default for the specified parameter.

**Note:** `name` must match the name of the uniform in the code exactly.

**Note:** If the sampler array is used use `index` to access the specified texture.

* * *

[Mode](#enum-shader-mode) **get\_mode**() const [🔗](#class-shader-method-get-mode)

Returns the shader mode for the shader.

* * *

[Array](class_array.md#class-array) **get\_shader\_uniform\_list**(get\_groups: [bool](class_bool.md#class-bool) = false) [🔗](#class-shader-method-get-shader-uniform-list)

Returns the list of shader uniforms that can be assigned to a [ShaderMaterial](class_shadermaterial.md#class-shadermaterial), for use with [ShaderMaterial.set\_shader\_parameter()](class_shadermaterial.md#class-shadermaterial-method-set-shader-parameter) and [ShaderMaterial.get\_shader\_parameter()](class_shadermaterial.md#class-shadermaterial-method-get-shader-parameter). The parameters returned are contained in dictionaries in a similar format to the ones returned by [Object.get\_property\_list()](class_object.md#class-object-method-get-property-list).

If argument `get_groups` is `true`, parameter grouping hints are also included in the list.

* * *

void **inspect\_native\_shader\_code**() [🔗](#class-shader-method-inspect-native-shader-code)

Only available when running in the editor. Opens a popup that visualizes the generated shader code, including all variants and internal shader code. See also [Material.inspect\_native\_shader\_code()](class_material.md#class-material-method-inspect-native-shader-code).

* * *

void **set\_default\_texture\_parameter**(name: [StringName](class_stringname.md#class-stringname), texture: [Texture](class_texture.md#class-texture), index: [int](class_int.md#class-int) = 0) [🔗](#class-shader-method-set-default-texture-parameter)

Sets the default texture to be used with a texture uniform. The default is used if a texture is not set in the [ShaderMaterial](class_shadermaterial.md#class-shadermaterial).

**Note:** `name` must match the name of the uniform in the code exactly.

**Note:** If the sampler array is used use `index` to access the specified texture.

[Previous](class_separationrayshape3d.md "SeparationRayShape3D") [Next](class_shaderinclude.md "ShaderInclude")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_separationrayshape3d.md "SeparationRayShape3D") [Next](class_shaderinclude.md "ShaderInclude")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).