---
title: VisualShaderNodeBooleanParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodebooleanparameter.html
crawled_at: "2026-08-13T10:38:54+12:00"
content_hash: 1ec8e7233b52ff38be07be23f0f05bc7952d45473cab59487a9b8547396b80e9
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeBooleanParameter

* * *

# VisualShaderNodeBooleanParameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A boolean parameter to be used within the visual shader graph.

## Description

Translated to `uniform bool` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [default\_value](#class-visualshadernodebooleanparameter-property-default-value) | `false` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodebooleanparameter-property-default-value-enabled) | `false` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **default\_value** = `false` [🔗](#class-visualshadernodebooleanparameter-property-default-value)

- void **set\_default\_value**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_default\_value**()


A default value to be assigned within the shader.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodebooleanparameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


Enables usage of the [default\_value](#class-visualshadernodebooleanparameter-property-default-value).

[Previous](class_visualshadernodebooleanconstant.md "VisualShaderNodeBooleanConstant") [Next](class_visualshadernodeclamp.md "VisualShaderNodeClamp")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodebooleanconstant.md "VisualShaderNodeBooleanConstant") [Next](class_visualshadernodeclamp.md "VisualShaderNodeClamp")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).