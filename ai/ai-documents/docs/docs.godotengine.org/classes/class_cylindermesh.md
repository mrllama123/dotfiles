---
title: CylinderMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_cylindermesh.html
crawled_at: "2026-08-13T10:25:31+12:00"
content_hash: 06b297cd12674a7c7e8484bce996ebeabaf298e4307ed54b32ef1479e8fe84e7
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - CylinderMesh

* * *

# CylinderMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class representing a cylindrical [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Description

Class representing a cylindrical [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh). This class can be used to create cones by setting either the [top\_radius](#class-cylindermesh-property-top-radius) or [bottom\_radius](#class-cylindermesh-property-bottom-radius) properties to `0.0`.

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [bottom\_radius](#class-cylindermesh-property-bottom-radius) | `0.5` |
| [bool](class_bool.md#class-bool) | [cap\_bottom](#class-cylindermesh-property-cap-bottom) | `true` |
| [bool](class_bool.md#class-bool) | [cap\_top](#class-cylindermesh-property-cap-top) | `true` |
| [float](class_float.md#class-float) | [height](#class-cylindermesh-property-height) | `2.0` |
| [int](class_int.md#class-int) | [radial\_segments](#class-cylindermesh-property-radial-segments) | `64` |
| [int](class_int.md#class-int) | [rings](#class-cylindermesh-property-rings) | `4` |
| [float](class_float.md#class-float) | [top\_radius](#class-cylindermesh-property-top-radius) | `0.5` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **bottom\_radius** = `0.5` [🔗](#class-cylindermesh-property-bottom-radius)

- void **set\_bottom\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_bottom\_radius**()


Bottom radius of the cylinder. If set to `0.0`, the bottom faces will not be generated, resulting in a conic shape. See also [cap\_bottom](#class-cylindermesh-property-cap-bottom).

* * *

[bool](class_bool.md#class-bool) **cap\_bottom** = `true` [🔗](#class-cylindermesh-property-cap-bottom)

- void **set\_cap\_bottom**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_cap\_bottom**()


If `true`, generates a cap at the bottom of the cylinder. This can be set to `false` to speed up generation and rendering when the cap is never seen by the camera. See also [bottom\_radius](#class-cylindermesh-property-bottom-radius).

**Note:** If [bottom\_radius](#class-cylindermesh-property-bottom-radius) is `0.0`, cap generation is always skipped even if [cap\_bottom](#class-cylindermesh-property-cap-bottom) is `true`.

* * *

[bool](class_bool.md#class-bool) **cap\_top** = `true` [🔗](#class-cylindermesh-property-cap-top)

- void **set\_cap\_top**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **is\_cap\_top**()


If `true`, generates a cap at the top of the cylinder. This can be set to `false` to speed up generation and rendering when the cap is never seen by the camera. See also [top\_radius](#class-cylindermesh-property-top-radius).

**Note:** If [top\_radius](#class-cylindermesh-property-top-radius) is `0.0`, cap generation is always skipped even if [cap\_top](#class-cylindermesh-property-cap-top) is `true`.

* * *

[float](class_float.md#class-float) **height** = `2.0` [🔗](#class-cylindermesh-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


Full height of the cylinder.

* * *

[int](class_int.md#class-int) **radial\_segments** = `64` [🔗](#class-cylindermesh-property-radial-segments)

- void **set\_radial\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_radial\_segments**()


Number of radial segments on the cylinder. Higher values result in a more detailed cylinder/cone at the cost of performance.

* * *

[int](class_int.md#class-int) **rings** = `4` [🔗](#class-cylindermesh-property-rings)

- void **set\_rings**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_rings**()


Number of edge rings along the height of the cylinder. Changing [rings](#class-cylindermesh-property-rings) does not have any visual impact unless a shader or procedural mesh tool is used to alter the vertex data. Higher values result in more subdivisions, which can be used to create smoother-looking effects with shaders or procedural mesh tools (at the cost of performance). When not altering the vertex data using a shader or procedural mesh tool, [rings](#class-cylindermesh-property-rings) should be kept to its default value.

* * *

[float](class_float.md#class-float) **top\_radius** = `0.5` [🔗](#class-cylindermesh-property-top-radius)

- void **set\_top\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_top\_radius**()


Top radius of the cylinder. If set to `0.0`, the top faces will not be generated, resulting in a conic shape. See also [cap\_top](#class-cylindermesh-property-cap-top).

[Previous](class_curvexyztexture.md "CurveXYZTexture") [Next](class_cylindershape3d.md "CylinderShape3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_curvexyztexture.md "CurveXYZTexture") [Next](class_cylindershape3d.md "CylinderShape3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).