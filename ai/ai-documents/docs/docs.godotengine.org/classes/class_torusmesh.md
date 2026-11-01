---
title: TorusMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_torusmesh.html
crawled_at: "2026-08-13T10:19:10+12:00"
content_hash: a820771efc45d2cd93f765417d373f95baabd9fa6074c2998566bd9e65ea9f9b
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TorusMesh

* * *

# TorusMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class representing a torus [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Description

Class representing a torus [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [inner\_radius](#class-torusmesh-property-inner-radius) | `0.5` |
| [float](class_float.md#class-float) | [outer\_radius](#class-torusmesh-property-outer-radius) | `1.0` |
| [int](class_int.md#class-int) | [ring\_segments](#class-torusmesh-property-ring-segments) | `32` |
| [int](class_int.md#class-int) | [rings](#class-torusmesh-property-rings) | `64` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **inner\_radius** = `0.5` [🔗](#class-torusmesh-property-inner-radius)

- void **set\_inner\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_inner\_radius**()


The inner radius of the torus.

* * *

[float](class_float.md#class-float) **outer\_radius** = `1.0` [🔗](#class-torusmesh-property-outer-radius)

- void **set\_outer\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_outer\_radius**()


The outer radius of the torus.

* * *

[int](class_int.md#class-int) **ring\_segments** = `32` [🔗](#class-torusmesh-property-ring-segments)

- void **set\_ring\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_ring\_segments**()


The number of edges each ring of the torus is constructed of.

* * *

[int](class_int.md#class-int) **rings** = `64` [🔗](#class-torusmesh-property-rings)

- void **set\_rings**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_rings**()


The number of slices the torus is constructed of.

[Previous](class_tilesetsource.md "TileSetSource") [Next](class_translation.md "Translation")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_tilesetsource.md "TileSetSource") [Next](class_translation.md "Translation")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).