---
title: VisualShaderNodeSample3D — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodesample3d.html
crawled_at: "2026-08-13T10:27:24+12:00"
content_hash: aa4c432290c914aebceb91cc2b34f84c0288ee68cfb7eec5e1e4af6eb855cc6a
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeSample3D

* * *

# VisualShaderNodeSample3D

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

**Inherited By:** [VisualShaderNodeTexture2DArray](class_visualshadernodetexture2darray.md#class-visualshadernodetexture2darray), [VisualShaderNodeTexture3D](class_visualshadernodetexture3d.md#class-visualshadernodetexture3d)

A base node for nodes which samples 3D textures in the visual shader graph.

## Description

A virtual class, use the descendants instead.

## Properties

|     |     |     |
| --- | --- | --- |
| [Source](#enum-visualshadernodesample3d-source) | [source](#class-visualshadernodesample3d-property-source) | `0` |

* * *

## Enumerations

enum **Source**: [🔗](#enum-visualshadernodesample3d-source)

[Source](#enum-visualshadernodesample3d-source) **SOURCE\_TEXTURE** = `0`

Creates internal uniform and provides a way to assign it within node.

[Source](#enum-visualshadernodesample3d-source) **SOURCE\_PORT** = `1`

Use the uniform texture from sampler port.

[Source](#enum-visualshadernodesample3d-source) **SOURCE\_MAX** = `2`

Represents the size of the [Source](#enum-visualshadernodesample3d-source) enum.

* * *

## Property Descriptions

[Source](#enum-visualshadernodesample3d-source) **source** = `0` [🔗](#class-visualshadernodesample3d-property-source)

- void **set\_source**(value: [Source](#enum-visualshadernodesample3d-source))

- [Source](#enum-visualshadernodesample3d-source) **get\_source**()


An input source type.

[Previous](class_visualshadernoderotationbyaxis.md "VisualShaderNodeRotationByAxis") [Next](class_visualshadernodescreennormalworldspace.md "VisualShaderNodeScreenNormalWorldSpace")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernoderotationbyaxis.md "VisualShaderNodeRotationByAxis") [Next](class_visualshadernodescreennormalworldspace.md "VisualShaderNodeScreenNormalWorldSpace")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).