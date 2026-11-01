---
title: VisualShaderNodeTexture3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetexture3d.html
crawled_at: "2026-08-13T10:33:35+12:00"
content_hash: 2b2fa1341363a64d8f3c0fd33e71c16e951434526ce58942775ee404a70428f4
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTexture3D

* * *

# VisualShaderNodeTexture3D

**Inherits:** [VisualShaderNodeSample3D](class_visualshadernodesample3d.md#class-visualshadernodesample3d) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Performs a 3D texture lookup within the visual shader graph.

## Description

Performs a lookup operation on the provided texture, with support for multiple texture sources to choose from.

## Properties

|     |     |
| --- | --- |
| [Texture3D](class_texture3d.md#class-texture3d) | [texture](#class-visualshadernodetexture3d-property-texture) |

* * *

## Property Descriptions

[Texture3D](class_texture3d.md#class-texture3d) **texture** [🔗](#class-visualshadernodetexture3d-property-texture)

- void **set\_texture**(value: [Texture3D](class_texture3d.md#class-texture3d))

- [Texture3D](class_texture3d.md#class-texture3d) **get\_texture**()


A source texture. Used if [VisualShaderNodeSample3D.source](class_visualshadernodesample3d.md#class-visualshadernodesample3d-property-source) is set to [VisualShaderNodeSample3D.SOURCE\_TEXTURE](class_visualshadernodesample3d.md#class-visualshadernodesample3d-constant-source-texture).

[Previous](class_visualshadernodetexture2dparameter.md "VisualShaderNodeTexture2DParameter") [Next](class_visualshadernodetexture3dparameter.md "VisualShaderNodeTexture3DParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetexture2dparameter.md "VisualShaderNodeTexture2DParameter") [Next](class_visualshadernodetexture3dparameter.md "VisualShaderNodeTexture3DParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).