---
title: VisualShaderNodeTexture2DArray — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetexture2darray.html
crawled_at: "2026-08-13T10:34:05+12:00"
content_hash: a9336a3f6fb7538f06cda5cae4b0774d9e178a9b040dba04927e23b09bef6e51
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTexture2DArray

* * *

# VisualShaderNodeTexture2DArray

**Inherits:** [VisualShaderNodeSample3D](class_visualshadernodesample3d.md#class-visualshadernodesample3d) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

A 2D texture uniform array to be used within the visual shader graph.

## Description

Translated to `uniform sampler2DArray` in the shader language.

## Properties

|     |     |
| --- | --- |
| [TextureLayered](class_texturelayered.md#class-texturelayered) | [texture\_array](#class-visualshadernodetexture2darray-property-texture-array) |

* * *

## Property Descriptions

[TextureLayered](class_texturelayered.md#class-texturelayered) **texture\_array** [🔗](#class-visualshadernodetexture2darray-property-texture-array)

- void **set\_texture\_array**(value: [TextureLayered](class_texturelayered.md#class-texturelayered))

- [TextureLayered](class_texturelayered.md#class-texturelayered) **get\_texture\_array**()


A source texture array. Used if [VisualShaderNodeSample3D.source](class_visualshadernodesample3d.md#class-visualshadernodesample3d-property-source) is set to [VisualShaderNodeSample3D.SOURCE\_TEXTURE](class_visualshadernodesample3d.md#class-visualshadernodesample3d-constant-source-texture).

[Previous](class_visualshadernodetexture.md "VisualShaderNodeTexture") [Next](class_visualshadernodetexture2darrayparameter.md "VisualShaderNodeTexture2DArrayParameter")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetexture.md "VisualShaderNodeTexture") [Next](class_visualshadernodetexture2darrayparameter.md "VisualShaderNodeTexture2DArrayParameter")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).