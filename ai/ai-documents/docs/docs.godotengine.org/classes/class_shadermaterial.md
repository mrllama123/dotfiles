---
title: ShaderMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shadermaterial.html
crawled_at: "2026-08-13T10:35:26+12:00"
content_hash: 012e3a94c5ef09032efa4a05a288ac94783c5645bd4ae5d820886c73c52d6377
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ShaderMaterial

* * *

# ShaderMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A material defined by a custom [Shader](class_shader.md#class-shader) program and the values of its shader parameters.

## Description

A material that uses a custom [Shader](class_shader.md#class-shader) program to render visual items (canvas items, meshes, skies, fog), or to process particles. Compared to other materials, **ShaderMaterial** gives deeper control over the generated shader code. For more information, see the shaders documentation index below.

Multiple **ShaderMaterial** s can use the same shader and configure different values for the shader uniforms.

**Note:** For performance reasons, the [Resource.changed](class_resource.md#class-resource-signal-changed) signal is only emitted when the [Resource.resource\_name](class_resource.md#class-resource-property-resource-name) changes. Only in editor, it is also emitted for [shader](#class-shadermaterial-property-shader) changes.

## Tutorials

- [Shaders documentation index](../tutorials/shaders/index.md)


## Properties

|     |     |
| --- | --- |
| [Shader](class_shader.md#class-shader) | [shader](#class-shadermaterial-property-shader) |

## Methods

|     |     |
| --- | --- |
| [Variant](class_variant.md#class-variant) | [get\_shader\_parameter](#class-shadermaterial-method-get-shader-parameter)(param: [StringName](class_stringname.md#class-stringname)) const |
| void | [set\_shader\_parameter](#class-shadermaterial-method-set-shader-parameter)(param: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) |

* * *

## Property Descriptions

[Shader](class_shader.md#class-shader) **shader** [🔗](#class-shadermaterial-property-shader)

- void **set\_shader**(value: [Shader](class_shader.md#class-shader))

- [Shader](class_shader.md#class-shader) **get\_shader**()


The [Shader](class_shader.md#class-shader) program used to render this material.

* * *

## Method Descriptions

[Variant](class_variant.md#class-variant) **get\_shader\_parameter**(param: [StringName](class_stringname.md#class-stringname)) const [🔗](#class-shadermaterial-method-get-shader-parameter)

Returns the current value set for this material of a uniform in the shader.

* * *

void **set\_shader\_parameter**(param: [StringName](class_stringname.md#class-stringname), value: [Variant](class_variant.md#class-variant)) [🔗](#class-shadermaterial-method-set-shader-parameter)

Changes the value set for this material of a uniform in the shader.

**Note:** `param` is case-sensitive and must match the name of the uniform in the code exactly (not the capitalized name in the inspector).

**Note:** Changes to the shader uniform will be effective on all instances using this **ShaderMaterial**. To prevent this, use per-instance uniforms with [GeometryInstance3D.set\_instance\_shader\_parameter()](class_geometryinstance3d.md#class-geometryinstance3d-method-set-instance-shader-parameter) or duplicate the **ShaderMaterial** resource using [Resource.duplicate()](class_resource.md#class-resource-method-duplicate). Per-instance uniforms allow for better shader reuse and are therefore faster, so they should be preferred over duplicating the **ShaderMaterial** when possible.

[Previous](class_shaderinclude.md "ShaderInclude") [Next](class_shape2d.md "Shape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shaderinclude.md "ShaderInclude") [Next](class_shape2d.md "Shape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).