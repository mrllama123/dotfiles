---
title: RDShaderSource — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdshadersource.html
crawled_at: "2026-08-13T10:19:17+12:00"
content_hash: f006e352de6a8bed2a3b9aa0732b5c96841bb2ea1fa2e436b8e28c29fa7dc29f
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDShaderSource

* * *

# RDShaderSource

**Inherits:** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Shader source code (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

Shader source code in text form.

See also [RDShaderFile](class_rdshaderfile.md#class-rdshaderfile). **RDShaderSource** is only meant to be used with the [RenderingDevice](class_renderingdevice.md#class-renderingdevice) API. It should not be confused with Godot's own [Shader](class_shader.md#class-shader) resource, which is what Godot's various nodes use for high-level shader programming.

## Properties

|     |     |     |
| --- | --- | --- |
| [ShaderLanguage](class_renderingdevice.md#enum-renderingdevice-shaderlanguage) | [language](#class-rdshadersource-property-language) | `0` |
| [String](class_string.md#class-string) | [source\_compute](#class-rdshadersource-property-source-compute) | `""` |
| [String](class_string.md#class-string) | [source\_fragment](#class-rdshadersource-property-source-fragment) | `""` |
| [String](class_string.md#class-string) | [source\_tesselation\_control](#class-rdshadersource-property-source-tesselation-control) | `""` |
| [String](class_string.md#class-string) | [source\_tesselation\_evaluation](#class-rdshadersource-property-source-tesselation-evaluation) | `""` |
| [String](class_string.md#class-string) | [source\_vertex](#class-rdshadersource-property-source-vertex) | `""` |

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_stage\_source](#class-rdshadersource-method-get-stage-source)(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const |
| void | [set\_stage\_source](#class-rdshadersource-method-set-stage-source)(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), source: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[ShaderLanguage](class_renderingdevice.md#enum-renderingdevice-shaderlanguage) **language** = `0` [🔗](#class-rdshadersource-property-language)

- void **set\_language**(value: [ShaderLanguage](class_renderingdevice.md#enum-renderingdevice-shaderlanguage))

- [ShaderLanguage](class_renderingdevice.md#enum-renderingdevice-shaderlanguage) **get\_language**()


The language the shader is written in.

* * *

[String](class_string.md#class-string) **source\_compute** = `""` [🔗](#class-rdshadersource-property-source-compute)

- void **set\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), source: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


Source code for the shader's compute stage.

* * *

[String](class_string.md#class-string) **source\_fragment** = `""` [🔗](#class-rdshadersource-property-source-fragment)

- void **set\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), source: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


Source code for the shader's fragment stage.

* * *

[String](class_string.md#class-string) **source\_tesselation\_control** = `""` [🔗](#class-rdshadersource-property-source-tesselation-control)

- void **set\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), source: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


Source code for the shader's tessellation control stage.

* * *

[String](class_string.md#class-string) **source\_tesselation\_evaluation** = `""` [🔗](#class-rdshadersource-property-source-tesselation-evaluation)

- void **set\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), source: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


Source code for the shader's tessellation evaluation stage.

* * *

[String](class_string.md#class-string) **source\_vertex** = `""` [🔗](#class-rdshadersource-property-source-vertex)

- void **set\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), source: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


Source code for the shader's vertex stage.

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const [🔗](#class-rdshadersource-method-get-stage-source)

Returns source code for the specified shader `stage`. Equivalent to getting one of [source\_compute](#class-rdshadersource-property-source-compute), [source\_fragment](#class-rdshadersource-property-source-fragment), [source\_tesselation\_control](#class-rdshadersource-property-source-tesselation-control), [source\_tesselation\_evaluation](#class-rdshadersource-property-source-tesselation-evaluation) or [source\_vertex](#class-rdshadersource-property-source-vertex).

* * *

void **set\_stage\_source**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), source: [String](class_string.md#class-string)) [🔗](#class-rdshadersource-method-set-stage-source)

Sets `source` code for the specified shader `stage`. Equivalent to setting one of [source\_compute](#class-rdshadersource-property-source-compute), [source\_fragment](#class-rdshadersource-property-source-fragment), [source\_tesselation\_control](#class-rdshadersource-property-source-tesselation-control), [source\_tesselation\_evaluation](#class-rdshadersource-property-source-tesselation-evaluation) or [source\_vertex](#class-rdshadersource-property-source-vertex).

**Note:** If you set the compute shader source code using this method directly, remember to remove the Godot-specific hint `#[compute]`.

[Previous](class_rdsamplerstate.md "RDSamplerState") [Next](class_rdtextureformat.md "RDTextureFormat")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdsamplerstate.md "RDSamplerState") [Next](class_rdtextureformat.md "RDTextureFormat")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).