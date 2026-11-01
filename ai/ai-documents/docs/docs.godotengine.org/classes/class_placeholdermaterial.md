---
title: PlaceholderMaterial — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdermaterial.html
crawled_at: "2026-08-13T10:28:31+12:00"
content_hash: bd4ff03c7e4e0d9d1822c3cf93d1dfa8f7985d6a464dac3a441fb6eb794c54d2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderMaterial

* * *

# PlaceholderMaterial

**Inherits:** [Material](class_material.md#class-material) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Placeholder class for a material.

## Description

This class is used when loading a project that uses a [Material](class_material.md#class-material) subclass in 2 conditions:

- When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.

- When this subclass is missing due to using a different engine version or build (e.g. modules disabled).


[Previous](class_placeholdercubemaparray.md "PlaceholderCubemapArray") [Next](class_placeholdermesh.md "PlaceholderMesh")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdercubemaparray.md "PlaceholderCubemapArray") [Next](class_placeholdermesh.md "PlaceholderMesh")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).