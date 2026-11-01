---
title: PlaceholderMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_placeholdermesh.html
crawled_at: "2026-08-13T10:32:49+12:00"
content_hash: 77d0b0981080fa8e3b3138ef13a36c44343d74c061c322ec397a2f1144bcecaa
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - PlaceholderMesh

* * *

# PlaceholderMesh

**Inherits:** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Placeholder class for a mesh.

## Description

This class is used when loading a project that uses a [Mesh](class_mesh.md#class-mesh) subclass in 2 conditions:

- When running the project exported in dedicated server mode, only the texture's dimensions are kept (as they may be relied upon for gameplay purposes or positioning of other elements). This allows reducing the exported PCK's size significantly.

- When this subclass is missing due to using a different engine version or build (e.g. modules disabled).


## Properties

|     |     |     |
| --- | --- | --- |
| [AABB](class_aabb.md#class-aabb) | [aabb](#class-placeholdermesh-property-aabb) | `AABB(0, 0, 0, 0, 0, 0)` |

* * *

## Property Descriptions

[AABB](class_aabb.md#class-aabb) **aabb** = `AABB(0, 0, 0, 0, 0, 0)` [🔗](#class-placeholdermesh-property-aabb)

- void **set\_aabb**(value: [AABB](class_aabb.md#class-aabb))

- [AABB](class_aabb.md#class-aabb) **get\_aabb**()


The smallest [AABB](class_aabb.md#class-aabb) enclosing this mesh in local space.

[Previous](class_placeholdermaterial.md "PlaceholderMaterial") [Next](class_placeholdertexture2d.md "PlaceholderTexture2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_placeholdermaterial.md "PlaceholderMaterial") [Next](class_placeholdertexture2d.md "PlaceholderTexture2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).