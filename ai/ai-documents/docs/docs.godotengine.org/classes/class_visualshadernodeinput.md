---
title: VisualShaderNodeInput — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeinput.html
crawled_at: "2026-08-13T10:38:49+12:00"
content_hash: 8630cbb939f2a42c0ece479a55d6664fdf1b6bdee987437505d9cb8dd6fc1013
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeInput

* * *

# VisualShaderNodeInput

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents the input shader parameter within the visual shader graph.

## Description

Gives access to input variables (built-ins) available for the shader. See the shading reference for the list of available built-ins for each shader type (check `Tutorials` section for link).

## Tutorials

- [Shading reference index](../tutorials/shaders/shader_reference/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [String](class_string.md#class-string) | [input\_name](#class-visualshadernodeinput-property-input-name) | `"[None]"` |

## Methods

|     |     |
| --- | --- |
| [String](class_string.md#class-string) | [get\_input\_real\_name](#class-visualshadernodeinput-method-get-input-real-name)() const |

* * *

## Signals

**input\_type\_changed**() [🔗](#class-visualshadernodeinput-signal-input-type-changed)

Emitted when input is changed via [input\_name](#class-visualshadernodeinput-property-input-name).

* * *

## Property Descriptions

[String](class_string.md#class-string) **input\_name** = `"[None]"` [🔗](#class-visualshadernodeinput-property-input-name)

- void **set\_input\_name**(value: [String](class_string.md#class-string))

- [String](class_string.md#class-string) **get\_input\_name**()


One of the several input constants in lower-case style like: "vertex" ( `VERTEX`) or "point\_size" ( `POINT_SIZE`).

* * *

## Method Descriptions

[String](class_string.md#class-string) **get\_input\_real\_name**() const [🔗](#class-visualshadernodeinput-method-get-input-real-name)

Returns a translated name of the current constant in the Godot Shader Language. E.g. `"ALBEDO"` if the [input\_name](#class-visualshadernodeinput-property-input-name) equal to `"albedo"`.

[Previous](class_visualshadernodeif.md "VisualShaderNodeIf") [Next](class_visualshadernodeintconstant.md "VisualShaderNodeIntConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeif.md "VisualShaderNodeIf") [Next](class_visualshadernodeintconstant.md "VisualShaderNodeIntConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).