---
title: VisualShaderNodeTransformCompose — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodetransformcompose.html
crawled_at: "2026-08-13T10:32:30+12:00"
content_hash: 08814df9c701cac3b72f2d438368a5f928a390289e48057da9f1a18ec65835cd
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeTransformCompose

* * *

# VisualShaderNodeTransformCompose

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Composes a [Transform3D](class_transform3d.md#class-transform3d) from four [Vector3](class_vector3.md#class-vector3) s within the visual shader graph.

## Description

Creates a 4×4 transform matrix using four vectors of type `vec3`. Each vector is one row in the matrix and the last column is a `vec4(0, 0, 0, 1)`.

[Previous](class_visualshadernodetexturesdfnormal.md "VisualShaderNodeTextureSDFNormal") [Next](class_visualshadernodetransformconstant.md "VisualShaderNodeTransformConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodetexturesdfnormal.md "VisualShaderNodeTextureSDFNormal") [Next](class_visualshadernodetransformconstant.md "VisualShaderNodeTransformConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).