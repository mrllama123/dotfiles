---
title: OpenXRVisibilityMask — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_openxrvisibilitymask.html
crawled_at: "2026-08-13T10:40:36+12:00"
content_hash: ba29687d953da4f4e1932dc4529adcc25ac894c21ce7fdaea6f015ad1852252d
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - OpenXRVisibilityMask

* * *

# OpenXRVisibilityMask

**Inherits:** [VisualInstance3D](class_visualinstance3d.md#class-visualinstance3d) **<** [Node3D](class_node3d.md#class-node3d) **<** [Node](class_node.md#class-node) **<** [Object](class_object.md#class-object)

Draws a stereo correct visibility mask.

## Description

The visibility mask allows us to black out the part of the render result that is invisible due to lens distortion.

As this is rendered first, it prevents fragments with expensive lighting calculations to be processed as they are discarded through z-checking.

[Previous](class_openxrrendermodelmanager.md "OpenXRRenderModelManager") [Next](class_optionbutton.md "OptionButton")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_openxrrendermodelmanager.md "OpenXRRenderModelManager") [Next](class_optionbutton.md "OptionButton")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).