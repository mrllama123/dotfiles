---
title: VisualShaderNodeTransformParameter — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetransformparameter.html
crawled_at: "2026-08-13T10:31:14+12:00"
content_hash: 95a85458557ee6681296bbf2e32b75a8de4c7dae7dfdc6ba5b4bdf99b89fdd4e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTransformParameter

* * *

# VisualShaderNodeTransformParameter

**Inherits:** [VisualShaderNodeParameter](class_visualshadernodeparameter.md#class-visualshadernodeparameter) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A [Transform3D](class_transform3d.md#class-transform3d) parameter for use within the visual shader graph.

## Description

Translated to `uniform mat4` in the shader language.

## Properties

|     |     |     |
| --- | --- | --- |
| [Transform3D](class_transform3d.md#class-transform3d) | [default\_value](#class-visualshadernodetransformparameter-property-default-value) | `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` |
| [bool](class_bool.md#class-bool) | [default\_value\_enabled](#class-visualshadernodetransformparameter-property-default-value-enabled) | `false` |

* * *

## Property Descriptions

[Transform3D](class_transform3d.md#class-transform3d) **default\_value** = `Transform3D(1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0)` [🔗](#class-visualshadernodetransformparameter-property-default-value)

- void **set\_default\_value**(value: [Transform3D](class_transform3d.md#class-transform3d))

- [Transform3D](class_transform3d.md#class-transform3d) **get\_default\_value**()


A default value to be assigned within the shader.

* * *

[bool](class_bool.md#class-bool) **default\_value\_enabled** = `false` [🔗](#class-visualshadernodetransformparameter-property-default-value-enabled)

- void **set\_default\_value\_enabled**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_default\_value\_enabled**()


Enables usage of the [default\_value](#class-visualshadernodetransformparameter-property-default-value).

[Previous](class_visualshadernodetransformop.md "VisualShaderNodeTransformOp") [Next](class_visualshadernodetransformvecmult.md "VisualShaderNodeTransformVecMult")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetransformop.md "VisualShaderNodeTransformOp") [Next](class_visualshadernodetransformvecmult.md "VisualShaderNodeTransformVecMult")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).