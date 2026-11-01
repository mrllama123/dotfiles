---
title: VisualShaderNodeParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeparameter.html
crawled_at: "2026-08-13T10:33:09+12:00"
content_hash: eff94f27b47badcd1106ae26e94494a50bdc1d9662f0da855083fe4d46ba8184
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeParameter

* * *

# VisualShaderNodeParameter

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeBooleanParameter](class_visualshadernodebooleanparameter.md#class-visualshadernodebooleanparameter), [VisualShaderNodeColorParameter](class_visualshadernodecolorparameter.md#class-visualshadernodecolorparameter), [VisualShaderNodeFloatParameter](class_visualshadernodefloatparameter.md#class-visualshadernodefloatparameter), [VisualShaderNodeIntParameter](class_visualshadernodeintparameter.md#class-visualshadernodeintparameter), [VisualShaderNodeTextureParameter](class_visualshadernodetextureparameter.md#class-visualshadernodetextureparameter), [VisualShaderNodeTransformParameter](class_visualshadernodetransformparameter.md#class-visualshadernodetransformparameter), [VisualShaderNodeUIntParameter](class_visualshadernodeuintparameter.md#class-visualshadernodeuintparameter), [VisualShaderNodeVec2Parameter](class_visualshadernodevec2parameter.md#class-visualshadernodevec2parameter), [VisualShaderNodeVec3Parameter](class_visualshadernodevec3parameter.md#class-visualshadernodevec3parameter), [VisualShaderNodeVec4Parameter](class_visualshadernodevec4parameter.md#class-visualshadernodevec4parameter)

A base type for the parameters within the visual shader graph.

## Description

A parameter represents a variable in the shader which is set externally, i.e. from the [ShaderMaterial](class_shadermaterial.md#class-shadermaterial). Parameters are exposed as properties in the [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) and can be assigned from the Inspector or from a script.

## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [parameter\_name](#class-visualshadernodeparameter-property-parameter-name) | `""` |
| [Qualifier](#enum-visualshadernodeparameter-qualifier) | [qualifier](#class-visualshadernodeparameter-property-qualifier) | `0` |

* * *

## Enumerations

enum **Qualifier**: [🔗](#enum-visualshadernodeparameter-qualifier)

[Qualifier](#enum-visualshadernodeparameter-qualifier) **QUAL\_NONE** = `0`

The parameter will be tied to the [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) using this shader.

[Qualifier](#enum-visualshadernodeparameter-qualifier) **QUAL\_GLOBAL** = `1`

The parameter will use a global value, defined in Project Settings.

[Qualifier](#enum-visualshadernodeparameter-qualifier) **QUAL\_INSTANCE** = `2`

The parameter will be tied to the node with attached [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) using this shader.

[Qualifier](#enum-visualshadernodeparameter-qualifier) **QUAL\_MAX** = `3`

Represents the size of the [Qualifier](#enum-visualshadernodeparameter-qualifier) enum.

* * *

## Property Descriptions

[String](class_string.md#class-string) **parameter\_name** = `""` [🔗](#class-visualshadernodeparameter-property-parameter-name)

- void **set\_parameter\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_parameter\_name**()


Name of the parameter, by which it can be accessed through the [ShaderMaterial](class_shadermaterial.md#class-shadermaterial) properties.

* * *

[Qualifier](#enum-visualshadernodeparameter-qualifier) **qualifier** = `0` [🔗](#class-visualshadernodeparameter-property-qualifier)

- void **set\_qualifier**(value: [Qualifier](#enum-visualshadernodeparameter-qualifier))

- [Qualifier](#enum-visualshadernodeparameter-qualifier) **get\_qualifier**()


Defines the scope of the parameter.

[Previous](class_visualshadernodeoutput.md "VisualShaderNodeOutput") [Next](class_visualshadernodeparameterref.md "VisualShaderNodeParameterRef")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeoutput.md "VisualShaderNodeOutput") [Next](class_visualshadernodeparameterref.md "VisualShaderNodeParameterRef")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).