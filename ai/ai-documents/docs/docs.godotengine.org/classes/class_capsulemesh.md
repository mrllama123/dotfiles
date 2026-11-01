---
title: CapsuleMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_capsulemesh.html
crawled_at: "2026-08-13T10:24:11+12:00"
content_hash: 1f015aedccfafe84675f4321282bb0ad4b351bcd627cc106d52f1340cd5ce2e2
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CapsuleMesh

* * *

# CapsuleMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class representing a capsule-shaped [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Description

Class representing a capsule-shaped [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-capsulemesh-property-height) | `2.0` |
| [int](class_int.md#class-int) | [radial\_segments](#class-capsulemesh-property-radial-segments) | `64` |
| [float](class_float.md#class-float) | [radius](#class-capsulemesh-property-radius) | `0.5` |
| [int](class_int.md#class-int) | [rings](#class-capsulemesh-property-rings) | `8` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `2.0` [🔗](#class-capsulemesh-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


Total height of the capsule mesh (including the hemispherical ends).

**Note:** The [height](#class-capsulemesh-property-height) of a capsule must be at least twice its [radius](#class-capsulemesh-property-radius). Otherwise, the capsule becomes a circle. If the [height](#class-capsulemesh-property-height) is less than twice the [radius](#class-capsulemesh-property-radius), the properties adjust to a valid value.

* * *

[int](class_int.md#class-int) **radial\_segments** = `64` [🔗](#class-capsulemesh-property-radial-segments)

- void **set\_radial\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_radial\_segments**()


Number of radial segments on the capsule mesh.

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-capsulemesh-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


Radius of the capsule mesh.

**Note:** The [radius](#class-capsulemesh-property-radius) of a capsule cannot be greater than half of its [height](#class-capsulemesh-property-height). Otherwise, the capsule becomes a circle. If the [radius](#class-capsulemesh-property-radius) is greater than half of the [height](#class-capsulemesh-property-height), the properties adjust to a valid value.

* * *

[int](class_int.md#class-int) **rings** = `8` [🔗](#class-capsulemesh-property-rings)

- void **set\_rings**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_rings**()


Number of rings along the height of the capsule.

[Previous](class_canvastexture.md "CanvasTexture") [Next](class_capsuleshape2d.md "CapsuleShape2D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_canvastexture.md "CanvasTexture") [Next](class_capsuleshape2d.md "CapsuleShape2D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).