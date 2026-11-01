---
title: ShaderInclude — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_shaderinclude.html
crawled_at: "2026-08-13T10:21:22+12:00"
content_hash: f310dc0b80f2cf5b5e9af07325ae622076a3ce13e1c74af840eda94f3bf29f08
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - ShaderInclude

* * *

# ShaderInclude

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A snippet of shader code to be included in a [Shader](class_shader.md#class-shader) with `#include`.

## Description

A shader include file, saved with the `.gdshaderinc` extension. This class allows you to define a custom shader snippet that can be included in a [Shader](class_shader.md#class-shader) by using the preprocessor directive `#include`, followed by the file path (e.g. `#include "res://shader_lib.gdshaderinc"`). The snippet doesn't have to be a valid shader on its own.

## Tutorials

- [Shader preprocessor](../tutorials/shaders/shader_reference/shader_preprocessor.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [code](#class-shaderinclude-property-code) | `""` |

* * *

## Property Descriptions

[String](class_string.md#class-string) **code** = `""` [🔗](#class-shaderinclude-property-code)

- void **set\_code**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_code**()


Returns the code of the shader include file. The returned text is what the user has written, not the full generated code used internally.

[Previous](class_shader.md "Shader") [Next](class_shadermaterial.md "ShaderMaterial")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_shader.md "Shader") [Next](class_shadermaterial.md "ShaderMaterial")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).