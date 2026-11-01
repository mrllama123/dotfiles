---
title: VisualShaderNodeOuterProduct — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeouterproduct.html
crawled_at: "2026-08-13T10:37:40+12:00"
content_hash: d05e06478defbd29f68f36cd582abe79f7f93c7f425ec10b0b83245cdd2e2e3c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeOuterProduct

* * *

# VisualShaderNodeOuterProduct

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Calculates an outer product of two vectors within the visual shader graph.

## Description

`OuterProduct` treats the first parameter `c` as a column vector (matrix with one column) and the second parameter `r` as a row vector (matrix with one row) and does a linear algebraic matrix multiply `c * r`, yielding a matrix whose number of rows is the number of components in `c` and whose number of columns is the number of components in `r`.

[Previous](class_visualshadernodemultiplyadd.md "VisualShaderNodeMultiplyAdd") [Next](class_visualshadernodeoutput.md "VisualShaderNodeOutput")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodemultiplyadd.md "VisualShaderNodeMultiplyAdd") [Next](class_visualshadernodeoutput.md "VisualShaderNodeOutput")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).