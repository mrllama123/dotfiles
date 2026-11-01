---
title: VisualShaderNodeFaceForward — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodefaceforward.html
crawled_at: "2026-08-13T10:39:25+12:00"
content_hash: ef1220efffcb5d7134b3e99eade5b08c9c3f5c02154fd70caea097eb420ba62e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeFaceForward

* * *

# VisualShaderNodeFaceForward

**Inherits:** [VisualShaderNodeVectorBase](class_visualshadernodevectorbase.md#class-visualshadernodevectorbase) **<** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Returns the vector that points in the same direction as a reference vector within the visual shader graph.

## Description

Translates to `faceforward(N, I, Nref)` in the shader language. The function has three vector parameters: `N`, the vector to orient, `I`, the incident vector, and `Nref`, the reference vector. If the dot product of `I` and `Nref` is smaller than zero the return value is `N`. Otherwise, `-N` is returned.

[Previous](class_visualshadernodeexpression.md "VisualShaderNodeExpression") [Next](class_visualshadernodefloatconstant.md "VisualShaderNodeFloatConstant")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodeexpression.md "VisualShaderNodeExpression") [Next](class_visualshadernodefloatconstant.md "VisualShaderNodeFloatConstant")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).