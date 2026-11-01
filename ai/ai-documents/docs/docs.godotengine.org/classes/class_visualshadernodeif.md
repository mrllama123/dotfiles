---
title: VisualShaderNodeIf — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_visualshadernodeif.html
crawled_at: "2026-08-13T10:36:56+12:00"
content_hash: 61920d0a73c343de20d2c4c0e3f13980b8abf5e21adabcebcad821578fb7c82c
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - VisualShaderNodeIf

* * *

# VisualShaderNodeIf

**Inherits:** [VisualShaderNode](class_visualshadernode.md#class-visualshadernode) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Outputs a 3D vector based on the result of a floating-point comparison within the visual shader graph.

## Description

This visual shader node has six input ports:

- Port **1** and **2** provide the two floating-point numbers `a` and `b` that will be compared.

- Port **3** is the tolerance, which allows similar floating-point numbers to be considered equal.

- Ports **4**, **5**, and **6** are the possible outputs, returned if `a == b`, `a > b`, or `a < b` respectively.


[Previous](class_visualshadernodegroupbase.md "VisualShaderNodeGroupBase") [Next](class_visualshadernodeinput.md "VisualShaderNodeInput")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_visualshadernodegroupbase.md "VisualShaderNodeGroupBase") [Next](class_visualshadernodeinput.md "VisualShaderNodeInput")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).