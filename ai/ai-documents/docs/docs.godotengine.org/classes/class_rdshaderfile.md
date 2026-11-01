---
title: RDShaderFile — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdshaderfile.html
crawled_at: "2026-08-13T10:42:08+12:00"
content_hash: f294a9cee2f087eadb49e2575003a223b69e9bddea49ac3e70f0edf1094e6cf3
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDShaderFile

* * *

# RDShaderFile

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Compiled shader file in SPIR-V form (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)). Not to be confused with Godot's own [Shader](class_shader.md#class-shader).

## Description

Compiled shader file in SPIR-V form.

See also [RDShaderSource](class_rdshadersource.md#class-rdshadersource). **RDShaderFile** is only meant to be used with the [RenderingDevice](class_renderingdevice.md#class-renderingdevice) API. It should not be confused with Godot's own [Shader](class_shader.md#class-shader) resource, which is what Godot's various nodes use for high-level shader programming.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [base\_error](#class-rdshaderfile-property-base-error) | `""` |

## Methods

|     |     |
| --- | --- |
| [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv) | [get\_spirv](#class-rdshaderfile-method-get-spirv)(version: [StringName](class_stringname.md#class-stringname) = &"") const |
| [Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] | [get\_version\_list](#class-rdshaderfile-method-get-version-list)() const |
| void | [set\_bytecode](#class-rdshaderfile-method-set-bytecode)(bytecode: [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv), version: [StringName](class_stringname.md#class-stringname) = &"") |

* * *

## Property Descriptions

[String](class_string.md#class-string) **base\_error** = `""` [🔗](#class-rdshaderfile-property-base-error)

- void **set\_base\_error**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_base\_error**()


The base compilation error message, which indicates errors not related to a specific shader stage if non-empty. If empty, shader compilation is not necessarily successful (check [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv)'s error message members).

* * *

## Method Descriptions

[RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv) **get\_spirv**(version: [StringName](class_stringname.md#class-stringname) = &"") const [🔗](#class-rdshaderfile-method-get-spirv)

Returns the SPIR-V intermediate representation for the specified shader `version`.

* * *

[Array](class_array.md#class-array)\[ [StringName](class_stringname.md#class-stringname)\] **get\_version\_list**() const [🔗](#class-rdshaderfile-method-get-version-list)

Returns the list of compiled versions for this shader.

* * *

void **set\_bytecode**(bytecode: [RDShaderSPIRV](class_rdshaderspirv.md#class-rdshaderspirv), version: [StringName](class_stringname.md#class-stringname) = &"") [🔗](#class-rdshaderfile-method-set-bytecode)

Sets the SPIR-V `bytecode` that will be compiled for the specified `version`.

[Previous](class_quadoccluder3d.md "QuadOccluder3D") [Next](class_rdshaderspirv.md "RDShaderSPIRV")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_quadoccluder3d.md "QuadOccluder3D") [Next](class_rdshaderspirv.md "RDShaderSPIRV")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).