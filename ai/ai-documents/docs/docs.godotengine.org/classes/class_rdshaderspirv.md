---
title: RDShaderSPIRV — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_rdshaderspirv.html
crawled_at: "2026-08-13T10:34:50+12:00"
content_hash: 83386493d9dd286e2daea664ecda4e5c75eb9ed78bbe80cca7db71b1d0163a4a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RDShaderSPIRV

* * *

# RDShaderSPIRV

**Inherits:** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

SPIR-V intermediate representation as part of an [RDShaderFile](class_rdshaderfile.md#class-rdshaderfile) (used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice)).

## Description

**RDShaderSPIRV** represents an [RDShaderFile](class_rdshaderfile.md#class-rdshaderfile)'s [SPIR-V](https://www.khronos.org/spir/) code for various shader stages, as well as possible compilation error messages. SPIR-V is a low-level intermediate shader representation. This intermediate representation is not used directly by GPUs for rendering, but it can be compiled into binary shaders that GPUs can understand. Unlike compiled shaders, SPIR-V is portable across GPU models and driver versions.

This object is used by [RenderingDevice](class_renderingdevice.md#class-renderingdevice).

## Properties

|     |     |     |
| --- | --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [bytecode\_compute](#class-rdshaderspirv-property-bytecode-compute) | `PackedByteArray()` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [bytecode\_fragment](#class-rdshaderspirv-property-bytecode-fragment) | `PackedByteArray()` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [bytecode\_tesselation\_control](#class-rdshaderspirv-property-bytecode-tesselation-control) | `PackedByteArray()` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [bytecode\_tesselation\_evaluation](#class-rdshaderspirv-property-bytecode-tesselation-evaluation) | `PackedByteArray()` |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [bytecode\_vertex](#class-rdshaderspirv-property-bytecode-vertex) | `PackedByteArray()` |
| [String](class_string.md#class-string) | [compile\_error\_compute](#class-rdshaderspirv-property-compile-error-compute) | `""` |
| [String](class_string.md#class-string) | [compile\_error\_fragment](#class-rdshaderspirv-property-compile-error-fragment) | `""` |
| [String](class_string.md#class-string) | [compile\_error\_tesselation\_control](#class-rdshaderspirv-property-compile-error-tesselation-control) | `""` |
| [String](class_string.md#class-string) | [compile\_error\_tesselation\_evaluation](#class-rdshaderspirv-property-compile-error-tesselation-evaluation) | `""` |
| [String](class_string.md#class-string) | [compile\_error\_vertex](#class-rdshaderspirv-property-compile-error-vertex) | `""` |

## Methods

|     |     |
| --- | --- |
| [PackedByteArray](class_packedbytearray.md#class-packedbytearray) | [get\_stage\_bytecode](#class-rdshaderspirv-method-get-stage-bytecode)(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const |
| [String](class_string.md#class-string) | [get\_stage\_compile\_error](#class-rdshaderspirv-method-get-stage-compile-error)(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const |
| void | [set\_stage\_bytecode](#class-rdshaderspirv-method-set-stage-bytecode)(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), bytecode: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) |
| void | [set\_stage\_compile\_error](#class-rdshaderspirv-method-set-stage-compile-error)(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), compile\_error: [String](class_string.md#class-string)) |

* * *

## Property Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **bytecode\_compute** = `PackedByteArray()` [🔗](#class-rdshaderspirv-property-bytecode-compute)

- void **set\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), bytecode: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The SPIR-V bytecode for the compute shader stage.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **bytecode\_fragment** = `PackedByteArray()` [🔗](#class-rdshaderspirv-property-bytecode-fragment)

- void **set\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), bytecode: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The SPIR-V bytecode for the fragment shader stage.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **bytecode\_tesselation\_control** = `PackedByteArray()` [🔗](#class-rdshaderspirv-property-bytecode-tesselation-control)

- void **set\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), bytecode: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The SPIR-V bytecode for the tessellation control shader stage.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **bytecode\_tesselation\_evaluation** = `PackedByteArray()` [🔗](#class-rdshaderspirv-property-bytecode-tesselation-evaluation)

- void **set\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), bytecode: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The SPIR-V bytecode for the tessellation evaluation shader stage.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **bytecode\_vertex** = `PackedByteArray()` [🔗](#class-rdshaderspirv-property-bytecode-vertex)

- void **set\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), bytecode: [PackedByteArray](class_packedbytearray.md#class-packedbytearray))

- [PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The SPIR-V bytecode for the vertex shader stage.

**Note:** The returned array is _copied_ and any changes to it will not update the original property value. See [PackedByteArray](class_packedbytearray.md#class-packedbytearray) for more details.

* * *

[String](class_string.md#class-string) **compile\_error\_compute** = `""` [🔗](#class-rdshaderspirv-property-compile-error-compute)

- void **set\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), compile\_error: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The compilation error message for the compute shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

* * *

[String](class_string.md#class-string) **compile\_error\_fragment** = `""` [🔗](#class-rdshaderspirv-property-compile-error-fragment)

- void **set\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), compile\_error: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The compilation error message for the fragment shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

* * *

[String](class_string.md#class-string) **compile\_error\_tesselation\_control** = `""` [🔗](#class-rdshaderspirv-property-compile-error-tesselation-control)

- void **set\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), compile\_error: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The compilation error message for the tessellation control shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

* * *

[String](class_string.md#class-string) **compile\_error\_tesselation\_evaluation** = `""` [🔗](#class-rdshaderspirv-property-compile-error-tesselation-evaluation)

- void **set\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), compile\_error: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The compilation error message for the tessellation evaluation shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

* * *

[String](class_string.md#class-string) **compile\_error\_vertex** = `""` [🔗](#class-rdshaderspirv-property-compile-error-vertex)

- void **set\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), compile\_error: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const


The compilation error message for the vertex shader stage (set by the SPIR-V compiler and Godot). If empty, shader compilation was successful.

* * *

## Method Descriptions

[PackedByteArray](class_packedbytearray.md#class-packedbytearray) **get\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const [🔗](#class-rdshaderspirv-method-get-stage-bytecode)

Equivalent to getting one of [bytecode\_compute](#class-rdshaderspirv-property-bytecode-compute), [bytecode\_fragment](#class-rdshaderspirv-property-bytecode-fragment), [bytecode\_tesselation\_control](#class-rdshaderspirv-property-bytecode-tesselation-control), [bytecode\_tesselation\_evaluation](#class-rdshaderspirv-property-bytecode-tesselation-evaluation), [bytecode\_vertex](#class-rdshaderspirv-property-bytecode-vertex).

* * *

[String](class_string.md#class-string) **get\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage)) const [🔗](#class-rdshaderspirv-method-get-stage-compile-error)

Returns the compilation error message for the given shader `stage`. Equivalent to getting one of [compile\_error\_compute](#class-rdshaderspirv-property-compile-error-compute), [compile\_error\_fragment](#class-rdshaderspirv-property-compile-error-fragment), [compile\_error\_tesselation\_control](#class-rdshaderspirv-property-compile-error-tesselation-control), [compile\_error\_tesselation\_evaluation](#class-rdshaderspirv-property-compile-error-tesselation-evaluation), [compile\_error\_vertex](#class-rdshaderspirv-property-compile-error-vertex).

* * *

void **set\_stage\_bytecode**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), bytecode: [PackedByteArray](class_packedbytearray.md#class-packedbytearray)) [🔗](#class-rdshaderspirv-method-set-stage-bytecode)

Sets the SPIR-V `bytecode` for the given shader `stage`. Equivalent to setting one of [bytecode\_compute](#class-rdshaderspirv-property-bytecode-compute), [bytecode\_fragment](#class-rdshaderspirv-property-bytecode-fragment), [bytecode\_tesselation\_control](#class-rdshaderspirv-property-bytecode-tesselation-control), [bytecode\_tesselation\_evaluation](#class-rdshaderspirv-property-bytecode-tesselation-evaluation), [bytecode\_vertex](#class-rdshaderspirv-property-bytecode-vertex).

* * *

void **set\_stage\_compile\_error**(stage: [ShaderStage](class_renderingdevice.md#enum-renderingdevice-shaderstage), compile\_error: [String](class_string.md#class-string)) [🔗](#class-rdshaderspirv-method-set-stage-compile-error)

Sets the compilation error message for the given shader `stage` to `compile_error`. Equivalent to setting one of [compile\_error\_compute](#class-rdshaderspirv-property-compile-error-compute), [compile\_error\_fragment](#class-rdshaderspirv-property-compile-error-fragment), [compile\_error\_tesselation\_control](#class-rdshaderspirv-property-compile-error-tesselation-control), [compile\_error\_tesselation\_evaluation](#class-rdshaderspirv-property-compile-error-tesselation-evaluation), [compile\_error\_vertex](#class-rdshaderspirv-property-compile-error-vertex).

[Previous](class_rdshaderfile.md "RDShaderFile") [Next](class_rectangleshape2d.md "RectangleShape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rdshaderfile.md "RDShaderFile") [Next](class_rectangleshape2d.md "RectangleShape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).