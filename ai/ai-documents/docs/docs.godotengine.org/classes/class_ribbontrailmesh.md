---
title: RibbonTrailMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_ribbontrailmesh.html
crawled_at: "2026-08-13T10:35:10+12:00"
content_hash: d25ff19d0356e4e1e55ba2aeb70b707e7460db3bd342efd5f7b85da9eab5d644
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - RibbonTrailMesh

* * *

# RibbonTrailMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a straight ribbon-shaped [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) with variable width.

## Description

**RibbonTrailMesh** represents a straight ribbon-shaped mesh with variable width. The ribbon is composed of a number of flat or cross-shaped sections, each with the same [section\_length](#class-ribbontrailmesh-property-section-length) and number of [section\_segments](#class-ribbontrailmesh-property-section-segments). A [curve](#class-ribbontrailmesh-property-curve) is sampled along the total length of the ribbon, meaning that the curve determines the size of the ribbon along its length.

This primitive mesh is usually used for particle trails.

## Tutorials

- [3D Particle trails](../tutorials/3d/particles/trails.md)

- [Particle systems (3D)](../tutorials/3d/particles/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [Curve](class_curve.md#class-curve) | [curve](#class-ribbontrailmesh-property-curve) |  |
| [float](class_float.md#class-float) | [section\_length](#class-ribbontrailmesh-property-section-length) | `0.2` |
| [int](class_int.md#class-int) | [section\_segments](#class-ribbontrailmesh-property-section-segments) | `3` |
| [int](class_int.md#class-int) | [sections](#class-ribbontrailmesh-property-sections) | `5` |
| [Shape](#enum-ribbontrailmesh-shape) | [shape](#class-ribbontrailmesh-property-shape) | `1` |
| [float](class_float.md#class-float) | [size](#class-ribbontrailmesh-property-size) | `1.0` |

* * *

## Enumerations

enum **Shape**: [🔗](#enum-ribbontrailmesh-shape)

[Shape](#enum-ribbontrailmesh-shape) **SHAPE\_FLAT** = `0`

Gives the mesh a single flat face.

[Shape](#enum-ribbontrailmesh-shape) **SHAPE\_CROSS** = `1`

Gives the mesh two perpendicular flat faces, making a cross shape.

* * *

## Property Descriptions

[Curve](class_curve.md#class-curve) **curve** [🔗](#class-ribbontrailmesh-property-curve)

- void **set\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_curve**()


Determines the size of the ribbon along its length. The size of a particular section segment is obtained by multiplying the baseline [size](#class-ribbontrailmesh-property-size) by the value of this curve at the given distance. For values smaller than `0`, the faces will be inverted. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[float](class_float.md#class-float) **section\_length** = `0.2` [🔗](#class-ribbontrailmesh-property-section-length)

- void **set\_section\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_section\_length**()


The length of a section of the ribbon.

* * *

[int](class_int.md#class-int) **section\_segments** = `3` [🔗](#class-ribbontrailmesh-property-section-segments)

- void **set\_section\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_section\_segments**()


The number of segments in a section. The [curve](#class-ribbontrailmesh-property-curve) is sampled on each segment to determine its size. Higher values result in a more detailed ribbon at the cost of performance.

* * *

[int](class_int.md#class-int) **sections** = `5` [🔗](#class-ribbontrailmesh-property-sections)

- void **set\_sections**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sections**()


The total number of sections on the ribbon.

* * *

[Shape](#enum-ribbontrailmesh-shape) **shape** = `1` [🔗](#class-ribbontrailmesh-property-shape)

- void **set\_shape**(value: [Shape](#enum-ribbontrailmesh-shape))

- [Shape](#enum-ribbontrailmesh-shape) **get\_shape**()


Determines the shape of the ribbon.

* * *

[float](class_float.md#class-float) **size** = `1.0` [🔗](#class-ribbontrailmesh-property-size)

- void **set\_size**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_size**()


The baseline size of the ribbon. The size of a particular section segment is obtained by multiplying this size by the value of the [curve](#class-ribbontrailmesh-property-curve) at the given distance.

[Previous](class_rectangleshape2d.md "RectangleShape2D") [Next](class_richtexteffect.md "RichTextEffect")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_rectangleshape2d.md "RectangleShape2D") [Next](class_richtexteffect.md "RichTextEffect")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).