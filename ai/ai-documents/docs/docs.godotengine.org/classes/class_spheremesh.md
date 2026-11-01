---
title: SphereMesh — Godot Engine (4.5) documentation in English
url: https://docs.godotengine.org/en/4.5/classes/class_spheremesh.html
crawled_at: "2026-08-13T10:23:25+12:00"
content_hash: 215dfd49a992bcbefbb3490e1e0d75de9cc617a480f5e977eb358a75ad0bf15e
depth: 1
---

- Godot Engine 4.5 documentation in English

  - [Home](../index.md)
  - [All classes](index.md)
  - SphereMesh

* * *

# SphereMesh

**Inherits:** [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh) **<** [Mesh](class_mesh.md#class-mesh) **<** [Resource](class_resource.md#class-resource) **<** [RefCounted](class_refcounted.md#class-refcounted) **<** [Object](class_object.md#class-object)

Class representing a spherical [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Description

Class representing a spherical [PrimitiveMesh](class_primitivemesh.md#class-primitivemesh).

## Properties

|     |     |     |
| --- | --- | --- |
| [float](class_float.md#class-float) | [height](#class-spheremesh-property-height) | `1.0` |
| [bool](class_bool.md#class-bool) | [is\_hemisphere](#class-spheremesh-property-is-hemisphere) | `false` |
| [int](class_int.md#class-int) | [radial\_segments](#class-spheremesh-property-radial-segments) | `64` |
| [float](class_float.md#class-float) | [radius](#class-spheremesh-property-radius) | `0.5` |
| [int](class_int.md#class-int) | [rings](#class-spheremesh-property-rings) | `32` |

* * *

## Property Descriptions

[float](class_float.md#class-float) **height** = `1.0` [🔗](#class-spheremesh-property-height)

- void **set\_height**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_height**()


Full height of the sphere.

* * *

[bool](class_bool.md#class-bool) **is\_hemisphere** = `false` [🔗](#class-spheremesh-property-is-hemisphere)

- void **set\_is\_hemisphere**(value: [bool](class_bool.md#class-bool))

- [bool](class_bool.md#class-bool) **get\_is\_hemisphere**()


If `true`, a hemisphere is created rather than a full sphere.

**Note:** To get a regular hemisphere, the height and radius of the sphere must be equal.

* * *

[int](class_int.md#class-int) **radial\_segments** = `64` [🔗](#class-spheremesh-property-radial-segments)

- void **set\_radial\_segments**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_radial\_segments**()


Number of radial segments on the sphere.

* * *

[float](class_float.md#class-float) **radius** = `0.5` [🔗](#class-spheremesh-property-radius)

- void **set\_radius**(value: [float](class_float.md#class-float))

- [float](class_float.md#class-float) **get\_radius**()


Radius of sphere.

* * *

[int](class_int.md#class-int) **rings** = `32` [🔗](#class-spheremesh-property-rings)

- void **set\_rings**(value: [int](class_int.md#class-int))

- [int](class_int.md#class-int) **get\_rings**()


Number of segments along the height of the sphere.

[Previous](class_sky.md "Sky") [Next](class_sphereoccluder3d.md "SphereOccluder3D")

* * *

## User-contributed notes

_Please read the [User-contributed notes policy](https://github.com/godotengine/godot-docs-user-notes/discussions/1) before submitting a comment._

[Previous](class_sky.md "Sky") [Next](class_sphereoccluder3d.md "SphereOccluder3D")

* * *

© Copyright 2014-present Juan Linietsky, Ariel Manzur and the Godot community (CC BY 3.0).

Built with [Sphinx](https://www.sphinx-doc.org/) using a
[theme](https://github.com/readthedocs/sphinx_rtd_theme)
provided by [Read the Docs](https://readthedocs.org).