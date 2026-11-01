---
title: TubeTrailMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_tubetrailmesh.html
crawled_at: "2026-08-13T10:20:37+12:00"
content_hash: c45e51fbd2457290ec35068e7122c62b1a6499e9a0437078bad3dac849c927b8
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - TubeTrailMesh

* * *

# TubeTrailMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Represents a straight tube-shaped [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) with variable width.

## Description

**TubeTrailMesh** represents a straight tube-shaped mesh with variable width. The tube is composed of a number of cylindrical sections, each with the same [section\_length](#class-tubetrailmesh-property-section-length) and number of [section\_rings](#class-tubetrailmesh-property-section-rings). A [curve](#class-tubetrailmesh-property-curve) is sampled along the total length of the tube, meaning that the curve determines the radius of the tube along its length.

This primitive mesh is usually used for particle trails.

## Tutorials

- [3D Particle trails](../tutorials/3d/particles/trails.md)

- [Particle systems (3D)](../tutorials/3d/particles/index.md)


## Properties

|     |     |     |
| --- | --- | --- |
| [bool](class_bool.md#class-bool) | [cap\_bottom](#class-tubetrailmesh-property-cap-bottom) | `true` |
| [bool](class_bool.md#class-bool) | [cap\_top](#class-tubetrailmesh-property-cap-top) | `true` |
| [Curve](class_curve.md#class-curve) | [curve](#class-tubetrailmesh-property-curve) |  |
| [int](class_int.md#class-int) | [radial\_steps](#class-tubetrailmesh-property-radial-steps) | `8` |
| [float](class_float.md#class-float) | [radius](#class-tubetrailmesh-property-radius) | `0.5` |
| [float](class_float.md#class-float) | [section\_length](#class-tubetrailmesh-property-section-length) | `0.2` |
| [int](class_int.md#class-int) | [section\_rings](#class-tubetrailmesh-property-section-rings) | `3` |
| [int](class_int.md#class-int) | [sections](#class-tubetrailmesh-property-sections) | `5` |

* * *

## Property Descriptions

[bool](class_bool.md#class-bool) **cap\_bottom** = `true` [🔗](#class-tubetrailmesh-property-cap-bottom)

- void **set\_cap\_bottom**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_cap\_bottom**()


If `true`, generates a cap at the bottom of the tube. This can be set to `false` to speed up generation and rendering when the cap is never seen by the camera.

* * *

[bool](class_bool.md#class-bool) **cap\_top** = `true` [🔗](#class-tubetrailmesh-property-cap-top)

- void **set\_cap\_top**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_cap\_top**()


If `true`, generates a cap at the top of the tube. This can be set to `false` to speed up generation and rendering when the cap is never seen by the camera.

* * *

[Curve](class_curve.md#class-curve) **curve** [🔗](#class-tubetrailmesh-property-curve)

- void **set\_curve**(value: [Curve](class_curve.md#class-curve))

- [Curve](class_curve.md#class-curve) **get\_curve**()


Determines the radius of the tube along its length. The radius of a particular section ring is obtained by multiplying the baseline [radius](#class-tubetrailmesh-property-radius) by the value of this curve at the given distance. For values smaller than `0`, the faces will be inverted. Should be a unit [Curve](class_curve.md#class-curve).

* * *

[int](class_int.md#class-int) **radial\_steps** = `8` [🔗](#class-tubetrailmesh-property-radial-steps)

- void **set\_radial\_steps**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_radial\_steps**()


The number of sides on the tube. For example, a value of `5` means the tube will be pentagonal. Higher values result in a more detailed tube at the cost of performance.

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-tubetrailmesh-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


The baseline radius of the tube. The radius of a particular section ring is obtained by multiplying this radius by the value of the [curve](#class-tubetrailmesh-property-curve) at the given distance.

* * *

[float](class_float.md#class-float) **section\_length** = `0.2` [🔗](#class-tubetrailmesh-property-section-length)

- void **set\_section\_length**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_section\_length**()


The length of a section of the tube.

* * *

[int](class_int.md#class-int) **section\_rings** = `3` [🔗](#class-tubetrailmesh-property-section-rings)

- void **set\_section\_rings**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_section\_rings**()


The number of rings in a section. The [curve](#class-tubetrailmesh-property-curve) is sampled on each ring to determine its radius. Higher values result in a more detailed tube at the cost of performance.

* * *

[int](class_int.md#class-int) **sections** = `5` [🔗](#class-tubetrailmesh-property-sections)

- void **set\_sections**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_sections**()


The total number of sections on the tube.

[Previous](class_translation.md "Translation") [Next](class_videostream.md "VideoStream")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_translation.md "Translation") [Next](class_videostream.md "VideoStream")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).